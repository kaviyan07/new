package com.ecs.servlets;

import com.ecs.aua.xsd.support.Poa;
import com.ecs.aua.xsd.support.Poi;
import com.ecs.aua.xsd.support.PrnData;
import com.ecs.aua.xsd.support.RegionalData;
import com.ecs.aua.xsd.support.Uidata;

import java.io.Serializable;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "ECSKycResponseXMl")
@XmlAccessorType(XmlAccessType.FIELD)
public class ECSKycResponseXMl implements Serializable {
  /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

@XmlAttribute(name = "err")
  private boolean err;
  
  @XmlAttribute(name = "errCode")
  private String errCode;
  
  @XmlAttribute(name = "errMsg")
  private String errMsg;
  
  @XmlAttribute(name = "actionCode")
  private String actionCode;
  
  @XmlAttribute(name = "actionMsg")
  private String actionMsg;
  
  @XmlAttribute(name = "code")
  private String aadhaarResponseCode;
  
  @XmlAttribute(name = "txn")
  private String txn;
  
  @XmlAttribute(name = "tkn")
  private String uidToken;
  
  @XmlAttribute(name = "ts")
  private String ts;
  
  @XmlAttribute(name = "ttl")
  private String ttl;
  
  @XmlElement(name = "Poi")
  private Poi poi;
  
  @XmlElement(name = "Poa")
  private Poa poa;
  
  @XmlElement(name = "RegionalData")
  private RegionalData regionalData;
  
  @XmlElement(name = "Prn")
  private PrnData prn;
  
  @XmlElement(name = "Resp")
  private byte[] resp;
  
  
  @XmlElement(name = "Uidata")
  private Uidata uidata;
  
  public boolean isErr() {
    return this.err;
  }
  
  public void setErr(boolean paramBoolean) {
    this.err = paramBoolean;
  }
  
  public String getErrCode() {
    return this.errCode;
  }
  
  public void setErrCode(String paramString) {
    this.errCode = paramString;
  }
  
  public String getErrMsg() {
    return this.errMsg;
  }
  
  public void setErrMsg(String paramString) {
    this.errMsg = paramString;
  }
  
  public String getActionCode() {
    return this.actionCode;
  }
  
  public void setActionCode(String paramString) {
    this.actionCode = paramString;
  }
  
  public String getActionMsg() {
    return this.actionMsg;
  }
  
  public void setActionMsg(String paramString) {
    this.actionMsg = paramString;
  }
  
  public String getAadhaarResponseCode() {
    return this.aadhaarResponseCode;
  }
  
  public void setAadhaarResponseCode(String paramString) {
    this.aadhaarResponseCode = paramString;
  }
  
  public String getTxn() {
    return this.txn;
  }
  
  public void setTxn(String paramString) {
    this.txn = paramString;
  }
  
  public String getTs() {
    return this.ts;
  }
  
  public void setTs(String paramString) {
    this.ts = paramString;
  }
  
  public String getTtl() {
    return this.ttl;
  }
  
  public void setTtl(String paramString) {
    this.ttl = paramString;
  }
  
  public Poi getPoi() {
    return this.poi;
  }
  
  public void setPoi(Poi paramPoi) {
    this.poi = paramPoi;
  }
  
  public Poa getPoa() {
    return this.poa;
  }
  
  public void setPoa(Poa paramPoa) {
    this.poa = paramPoa;
  }
  
  public RegionalData getRegionalData() {
    return this.regionalData;
  }
  
  public void setRegionalData(RegionalData paramRegionalData) {
    this.regionalData = paramRegionalData;
  }
  
  public PrnData getPrn() {
    return this.prn;
  }
  
  public void setPrn(PrnData paramPrnData) {
    this.prn = paramPrnData;
  }
  
  public String getUidToken() {
    return this.uidToken;
  }
  
  public void setUidToken(String paramString) {
    this.uidToken = paramString;
  }
  
  public byte[] getResp() {
    return this.resp;
  }
  
  public void setResp(byte[] paramArrayOfbyte) {
    this.resp = paramArrayOfbyte;
  }

public Uidata getUidata() {
	return uidata;
}

public void setUidata(Uidata uidata) {
	this.uidata = uidata;
}


  
  
}
