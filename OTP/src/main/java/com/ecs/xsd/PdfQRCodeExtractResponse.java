package com.ecs.xsd;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "PdfQRCodeExtractResponse")
@XmlAccessorType(XmlAccessType.FIELD)
public class PdfQRCodeExtractResponse implements Serializable{

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@XmlAttribute(name = "err", required=true)
    protected boolean err;

    @XmlAttribute(name = "errCode", required=false)
    protected String errCode;

    @XmlAttribute(name = "errMsg", required=false)
    protected String errMsg;

    @XmlElement(name = "QRData", required=false)
    protected byte[] qrData;

    
	public boolean isErr() {
		return err;
	}

	public void setErr(boolean err) {
		this.err = err;
	}

	public String getErrCode() {
		return errCode;
	}

	public void setErrCode(String errCode) {
		this.errCode = errCode;
	}

	public String getErrMsg() {
		return errMsg;
	}

	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}

	public byte[] getQrData() {
		return qrData;
	}

	public void setQrData(byte[] qrData) {
		this.qrData = qrData;
	}
}
