package com.ecs.xsd;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "PdfQRCodeExtractRequest")
@XmlAccessorType(XmlAccessType.FIELD)
public class PdfQRCodeExtractRequest implements Serializable{

	@XmlAttribute(name="token")
    private String token;
	
	@XmlElement(name = "QRData", required = true)
    protected String qrData;

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public String getQrData() {
		return qrData;
	}

	public void setQrData(String qrData) {
		this.qrData = qrData;
	}
}