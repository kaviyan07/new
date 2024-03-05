package com.ecs.servlets;

import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecs.aua.api.ECSAuaInterfaceExApiHelper;
import com.ecs.aua.xsd.ECSKycResponse;
import com.ecs.uidai.response.parser.KycResProcessor;
import com.ecs.utils.SettingsReader;
import com.ecs.utils.Utils;
import com.ecs.utils.XMLUtils;
import com.ecs.xsd.PerformKycBioRequest;
import com.ecs.xsd.PerformKycBioResponse;
import com.google.gson.Gson;

/**
 * Servlet implementation class PerformKycBio
 */
@WebServlet("/performKycBio")
public class PerformKycBio extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Gson gson = new Gson();
	    try {
			response.setContentType("application/json");       

	        StringBuilder sb = new StringBuilder();

	        try {
	            String s;
	            while ((s = request.getReader().readLine()) != null) {
	                sb.append(s);
	            }
	        } catch(Exception ex) {
				sendError(response, gson, "Could not read message Body");
				ex.printStackTrace();
				return;
	        }

			PerformKycBioRequest req = null;
			
			try {
				req = gson.fromJson(sb.toString(), PerformKycBioRequest.class);
			} catch(Exception ex) {
				sendError(response, gson, "Invalid request");
				ex.printStackTrace();
				return;
			}

			//TODO: Validate the request parameters
			
			ServletContext context = getServletContext();
			InputStream is = context.getResourceAsStream("/WEB-INF/settings.properties");
			SettingsReader settings = new SettingsReader(is);

			ECSAuaInterfaceExApiHelper api = new ECSAuaInterfaceExApiHelper();
			api.initialize(settings.getProperty("AUA_APP_ID"), settings.getProperty("AUA_URL"), 
					Utils.getBytes(context.getResourceAsStream(settings.getProperty("PID_ENCRYPTION_KEY"))));

            if (settings.getProperty("SIGN_PFX") != null)
                api.setRequestSigningCertificate(Utils.getBytes(context.getResourceAsStream(settings.getProperty("SIGN_PFX"))),
                		settings.getProperty("SIGN_PFX_PASSWORD"));

            String usesBt = null;

            if (req.getBioType().equals("IIR"))
            {
                usesBt = "IIR";
            }
            else if(req.getFmrType().equals("0")) 
            {
                usesBt = "FMR";
            }
            else if(req.getFmrType().equals("1")) 
            {
                usesBt = "FIR";
            }
            else if(req.getFmrType().equals("2")) 
            {
                usesBt = "FMR,FIR";
            }
            boolean lr = true;
            
            ECSKycResponse kycres = api.getRDKyc(UUID.randomUUID().toString(), null, req.getAadhaarNumber(), req.getConsent(), false,
            		lr, usesBt, false, false, req.getPidData().getBytes());
            
    		
            
     	KycResProcessor pro = new KycResProcessor();
		String respXml = new String(kycres.getResp()); 
	//	System.out.println("respXml : "+respXml);
		pro.parse(respXml);
		
		
		System.out.println( "NAME : ------------->" +pro.getKycRes().getUidData().getLData().getName());
		
		  request.getSession().setAttribute("reg_dist", 	pro.getKycRes().getUidData().getLData().getDist());
		  request.getSession().setAttribute("reg_vtc", 	pro.getKycRes().getUidData().getLData().getVtc());
		  request.getSession().setAttribute("reg_Name", 	pro.getKycRes().getUidData().getLData().getName());
		  request.getSession().setAttribute("reg_co", 	pro.getKycRes().getUidData().getLData().getCo());
		  request.getSession().setAttribute("reg_House", 	pro.getKycRes().getUidData().getLData().getHouse());
		  request.getSession().setAttribute("reg_Street", 	pro.getKycRes().getUidData().getLData().getStreet());
		  request.getSession().setAttribute("reg_Lm", 	pro.getKycRes().getUidData().getLData().getLm());
		  request.getSession().setAttribute("reg_Loc", 	pro.getKycRes().getUidData().getLData().getLoc());
		  request.getSession().setAttribute("reg_State", 	pro.getKycRes().getUidData().getLData().getState());
		  request.getSession().setAttribute("reg_Pc", 	pro.getKycRes().getUidData().getLData().getPc());
		  request.getSession().setAttribute("reg_Country", 	pro.getKycRes().getUidData().getLData().getCountry());
		 
		
		  
            if(kycres.isErr())
            {
            	sendError(response, gson, kycres.getErrCode() + "-" + kycres.getErrMsg());
				return;
            }
                        
            
            request.getSession().setAttribute("KYC_RES", kycres);
            
    		PerformKycBioResponse resp = new PerformKycBioResponse();
    		resp.setError(false);
    		
    		response.getWriter().write(gson.toJson(resp));
    		return;
	    }
	    catch(Exception ex) {
			sendError(response, gson, "Server Error");
	    	ex.printStackTrace();
			return;
	    }
	}
	
	private void sendError(HttpServletResponse response, Gson gson, String errorMsg) throws IOException {
		System.out.println(errorMsg);
		PerformKycBioResponse resp = new PerformKycBioResponse();
		resp.setError(true);
		resp.setErrorMessage(errorMsg);
		
		response.getWriter().write(gson.toJson(resp));
	}
}
