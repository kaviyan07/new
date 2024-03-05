package com.ecs.utils;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

import org.apache.http.HttpEntity;
import org.apache.http.ParseException;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.config.RegistryBuilder;
import org.apache.http.conn.socket.ConnectionSocketFactory;
import org.apache.http.conn.socket.PlainConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLContextBuilder;
import org.apache.http.conn.ssl.TrustSelfSignedStrategy;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.impl.conn.PoolingHttpClientConnectionManager;
import org.apache.http.util.EntityUtils;


public class ECSHttpClient {

	public String ecsHttpClientCall(String serverAddressURL,String data) throws Exception {

		CloseableHttpClient closeableHttpClient = null;
		CloseableHttpResponse closeableHttpResponse = null;
		HttpEntity httpEntity = null;
		String responseString = null;
		try {
			
			
			String sslBypass = "Y";
			String timeOuts = "30";
//			//System.out.println("soapMessage:" + soapMessage);
			
			
			
			HttpPost post = new HttpPost(serverAddressURL);
			try {
				post.setEntity(new StringEntity(data));
			} catch (UnsupportedEncodingException e1) {
				e1.printStackTrace();
			}
			
		
				
			
			post.setHeader("content-type", "text/xml");
			post.setHeader("accept", "application/xml");
		

			SSLContext ctx = null;
			try {
				ctx = SSLContext.getInstance("SSL");
			} catch (NoSuchAlgorithmException e1) {
				e1.printStackTrace();
			}
			try {
				ctx.init(new KeyManager[0], new TrustManager[] { new DefaultTrustManager() }, new SecureRandom());
			} catch (KeyManagementException e1) {
				e1.printStackTrace();
			}

			SSLContext.setDefault(ctx);

			SSLContextBuilder builder = new SSLContextBuilder();
			builder.loadTrustMaterial(null, new TrustSelfSignedStrategy());
			SSLConnectionSocketFactory sslsf = new SSLConnectionSocketFactory(builder.build(),
					SSLConnectionSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);

			org.apache.http.config.Registry<ConnectionSocketFactory> registry = RegistryBuilder
					.<ConnectionSocketFactory>create().register("http", new PlainConnectionSocketFactory())
					.register("https", sslsf).build();
			
			PoolingHttpClientConnectionManager cm = new PoolingHttpClientConnectionManager(registry);

			/*
			 * Checking Time Outs
			 */
			RequestConfig requestConfig = null;
			try {
				int i = Integer.parseInt(timeOuts);
//				int i = Integer.valueOf(timeOuts);
				//System.out.println("timeOuts" + i);
				requestConfig = RequestConfig.custom().setConnectionRequestTimeout(i * 1000).setConnectTimeout(i * 1000)
						.setSocketTimeout(i * 1000).build();
			} catch (Exception e1) {
				//System.out.println("Configured TimeOut Exception: " + timeOuts);
//				 e1.printStackTrace();
			}

			/*
			 * Checking the SSL ByPass
			 */

			if (sslBypass.equalsIgnoreCase("Y") && requestConfig != null) {
				//System.out.println("********************* SSL ByPass and TimeOut is Enabled ********************");
				closeableHttpClient = HttpClients.custom().setDefaultRequestConfig(requestConfig)
						.setSSLSocketFactory(sslsf).setConnectionManager(cm).build();
			} else if (sslBypass.equalsIgnoreCase("Y")) {
				//System.out.println("********************* SSL ByPass is Enabled ********************");
				closeableHttpClient = HttpClients.custom().setSSLSocketFactory(sslsf).setConnectionManager(cm).build();
			} else if (requestConfig != null) {
				//System.out.println("********************* TimeOut is Enabled ********************");
				closeableHttpClient = HttpClients.custom().setDefaultRequestConfig(requestConfig).build();
			} else {
				//System.out.println("********************* Default HttpClient ********************");
				closeableHttpClient = HttpClients.createDefault();
			}

			try {
				//System.out.println("********************* execute ********************");
				closeableHttpResponse = closeableHttpClient.execute(post);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		/*	System.out.println();
			
			
			Header[] header=closeableHttpResponse.getAllHeaders();
			for(Header h:header)
			{
			System.out.println(h.getName()+"\t"+h.getValue());
			}*/
			
			httpEntity = closeableHttpResponse.getEntity();
			if (httpEntity == null) {
				throw new Exception("No Response From URL : " + serverAddressURL);
			}
			try {
				responseString = EntityUtils.toString(httpEntity);
				
				
				
				
			} catch (ParseException | IOException e) {
				e.printStackTrace();
			}
		} finally

		{

			if (closeableHttpResponse != null)
				try {
					closeableHttpResponse.close();
				} catch (IOException e) {
					e.printStackTrace();
				}

			if (closeableHttpClient != null)
				try {
					closeableHttpClient.close();
				} catch (IOException e) {
					e.printStackTrace();
				}

		}
		return responseString;

	}

	private static class DefaultTrustManager implements X509TrustManager {

		@Override
		public void checkClientTrusted(java.security.cert.X509Certificate[] arg0, String arg1)
				throws java.security.cert.CertificateException {

		}

		@Override
		public void checkServerTrusted(java.security.cert.X509Certificate[] arg0, String arg1)
				throws java.security.cert.CertificateException {

		}

		@Override
		public java.security.cert.X509Certificate[] getAcceptedIssuers() {
			return null;
		}
	}
}
