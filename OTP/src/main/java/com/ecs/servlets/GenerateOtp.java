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
import com.ecs.aua.xsd.ECSOtpResponse;
import com.ecs.utils.SettingsReader;
import com.ecs.utils.Utils;
import com.ecs.xsd.GenerateOtpRequest;
import com.ecs.xsd.GenerateOtpResponse;
import com.google.gson.Gson;

/**
 * Servlet implementation class GenerateOtp
 */
@WebServlet("/generateOtp")
public class GenerateOtp extends HttpServlet {
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
	        
			GenerateOtpRequest req = null;
			
			try {
				req = gson.fromJson(sb.toString(), GenerateOtpRequest.class);
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

            ECSOtpResponse otpResp = api.generateOtp(UUID.randomUUID().toString(), req.getAadhaarNumber(), null, req.getConsent(), 
            		req.isSendSMS(), req.isSendEmail());

            if(otpResp.isErr())
            {
            	sendError(response, gson, otpResp.getErrCode() + "-" + otpResp.getErrMsg());
				return;
            }
            
            String message = "Otp sent successfully";

            if(!isStringNullOrEmpty(otpResp.getMaskedMobile()) && isStringNullOrEmpty(otpResp.getMaskedEmail()))
            {
                message = message + " to " + otpResp.getMaskedMobile();
            }
            else if (isStringNullOrEmpty(otpResp.getMaskedMobile()) && !isStringNullOrEmpty(otpResp.getMaskedEmail()))
            {
                message = message + " to " + otpResp.getMaskedEmail();
            } 
            else
            {
                message = message + " to " + otpResp.getMaskedMobile() + " and to " + otpResp.getMaskedEmail();
            }
            GenerateOtpResponse resp = new GenerateOtpResponse();
    		resp.setError(false);
    		resp.setOtpTxnId(otpResp.getTxn());
    		resp.setMessage(message);
    		
    		response.getWriter().write(gson.toJson(resp));
    		return;
	    }
	    catch(Exception ex) {
			sendError(response, gson, "Server Error");
	    	ex.printStackTrace();
			return;
	    }
	}
	
	private static boolean isStringNullOrEmpty(String value) {
		if(value == null)
			return true;
		
		if(value.trim().length() == 0)
			return true;
		
		return false;
	}
	
	private void sendError(HttpServletResponse response, Gson gson, String errorMsg) throws IOException {
		System.out.println(errorMsg);
		GenerateOtpResponse resp = new GenerateOtpResponse();
		resp.setError(true);
		resp.setErrorMessage(errorMsg);
		
		response.getWriter().write(gson.toJson(resp));
	}
}
