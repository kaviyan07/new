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

import com.ecs.aua.utils.XMLUtils;
import com.ecs.offline.kyc.tokengen.ECSTokenGeneratorAPI;
import com.ecs.uidai.response.utils.Base64;
import com.ecs.utils.ECSHttpClient;
import com.ecs.utils.SettingsReader;
import com.ecs.utils.Utils;
import com.ecs.xsd.GenerateOtpResponse;
import com.ecs.xsd.PdfQRCodeExtractRequest;
import com.ecs.xsd.PdfQRCodeExtractResponse;
import com.ecs.xsd.QRData;
import com.google.gson.Gson;

/**
 * Servlet implementation class GenerateOtp
 */
@WebServlet("/QrExtract")
public class QrExtract extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Gson gson = new Gson();
		try {
			response.setContentType("application/json");       

			PdfQRCodeExtractRequest request1 = new PdfQRCodeExtractRequest();
			String base64image = request.getParameter("base64File");

			try {
				String QrFile =  Utils.decodeQRCode(base64image);
				request1.setQrData(QrFile);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				sendError(response, gson, "Invalid QR Code Data");
				return;
			}  

			ServletContext context = getServletContext();
			InputStream is = context.getResourceAsStream("/WEB-INF/settings.properties");
			SettingsReader settings = new SettingsReader(is);

			String ApiUrl = "https://devuat.offlinekyc.com/ECSOfflineKycServer/KycService";
			String clientId = "CAFS_OKYC";
			byte[] pvtKey = Utils.getBytes(context.getResourceAsStream(settings.getProperty("CLIENT_PVT_CERT")));
			String pvtPwd = "Test@1234";

			String token = ECSTokenGeneratorAPI.generateToken(clientId, pvtKey, pvtPwd, ApiUrl);
			request1.setToken(token);

			String data = XMLUtils.serialize(request1);
			ECSHttpClient ecsHttpClient = new ECSHttpClient();

			String resp = null;

			try {
				resp = ecsHttpClient.ecsHttpClientCall(ApiUrl, data);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				sendError(response, gson, "Exception at Token Generate API");
				return;
			}

			if (resp == null) {
				sendError(response, gson, "Exception at Token Generate API");
				return;
			}

			PdfQRCodeExtractResponse qrResponse = XMLUtils.deserialize(PdfQRCodeExtractResponse.class, resp);


			if (qrResponse.isErr()) {
				sendError(response, gson, qrResponse.getErrCode() + "-" + qrResponse.getErrMsg());
				return;
			}

			String XML3 = new String(qrResponse.getQrData());
			QRData printLetterBarcodeData = XMLUtils.deserialize(QRData.class,XML3);

			String address = "";

			if (!Utils.isEmpty(printLetterBarcodeData.getCareOf()))
				address = address+""+printLetterBarcodeData.getCareOf();
			else
				address = address+"";

			if (!Utils.isEmpty(printLetterBarcodeData.getHouse()))
				address = address+","+printLetterBarcodeData.getHouse();
			else
				address = address+"";

			if (!Utils.isEmpty(printLetterBarcodeData.getStreet()))
				address = address+","+printLetterBarcodeData.getStreet();
			else
				address = address+"";
			if (!Utils.isEmpty(printLetterBarcodeData.getPostOffice()))
				address = address+","+printLetterBarcodeData.getPostOffice();
			else
				address = address+",";
			if (!Utils.isEmpty(printLetterBarcodeData.getVtc()))
				address = address+","+printLetterBarcodeData.getVtc();
			else
				address = address+ "";
			if (!Utils.isEmpty(printLetterBarcodeData.getLocation()))
				address = address+","+printLetterBarcodeData.getLocation();
			else
				address = address+"";
			if (!Utils.isEmpty(printLetterBarcodeData.getLandmark()))
				address = address+","+printLetterBarcodeData.getLandmark();
			else
				address = address+"";
			if (!Utils.isEmpty(printLetterBarcodeData.getSubDistrict()))
				address = address+","+printLetterBarcodeData.getSubDistrict();
			else
				address = address+ "";
			if (!Utils.isEmpty(printLetterBarcodeData.getDistrict()))
				address = address+","+printLetterBarcodeData.getDistrict();
			else
				address = address+"";
			if (!Utils.isEmpty(printLetterBarcodeData.getState()))
				address = address+","+printLetterBarcodeData.getState();
			else {
				address = address+".";
			}




			if(printLetterBarcodeData.getGender().equalsIgnoreCase("M")) {

				request.getSession().setAttribute("sex","MALE");
			}
			else if(printLetterBarcodeData.getGender().equalsIgnoreCase("F")) {
				request.getSession().setAttribute("sex","FEMALE");
			}
			else {
				request.getSession().setAttribute("sex", "TRANSGENDER");
			}
			request.getSession().setAttribute("House", printLetterBarcodeData.getHouse());
			request.getSession().setAttribute("Street", printLetterBarcodeData.getStreet());
			request.getSession().setAttribute("PostOffice", printLetterBarcodeData.getPostOffice());
			request.getSession().setAttribute("Location", printLetterBarcodeData.getLocation());
			request.getSession().setAttribute("Landmark", printLetterBarcodeData.getLandmark());
			request.getSession().setAttribute("SubDistrict", printLetterBarcodeData.getSubDistrict());
			request.getSession().setAttribute("District", printLetterBarcodeData.getDistrict());
			request.getSession().setAttribute("State", printLetterBarcodeData.getState());
			request.getSession().setAttribute("image",Utils.J2KImageReader(Base64.decode(printLetterBarcodeData.getImage())));
			request.getSession().setAttribute("name", 	printLetterBarcodeData.getName());
			request.getSession().setAttribute("careOf", printLetterBarcodeData.getCareOf());
			request.getSession().setAttribute("dob", 	printLetterBarcodeData.getDob());
			sendSuccess(response, gson, "SUCCESS");
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
		GenerateOtpResponse resp = new GenerateOtpResponse();
		resp.setError(true);
		resp.setErrorMessage(errorMsg);
		response.getWriter().write(gson.toJson(resp));
	}
	
	private void sendSuccess(HttpServletResponse response, Gson gson, String errorMsg) throws IOException {
		GenerateOtpResponse resp = new GenerateOtpResponse();
		resp.setError(false);
		resp.setErrorMessage(errorMsg);
		response.getWriter().write(gson.toJson(resp));
	}
	
}
