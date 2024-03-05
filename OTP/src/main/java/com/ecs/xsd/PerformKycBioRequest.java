package com.ecs.xsd;

public class PerformKycBioRequest {
	private String aadhaarNumber;
	private String consent;
	private String bioType;
	private String fmrType;
	private boolean usesOtp;
	private String pidData;
	public String getAadhaarNumber() {
		return aadhaarNumber;
	}
	public void setAadhaarNumber(String aadhaarNumber) {
		this.aadhaarNumber = aadhaarNumber;
	}
	public String getConsent() {
		return consent;
	}
	public void setConsent(String consent) {
		this.consent = consent;
	}
	public String getBioType() {
		return bioType;
	}
	public void setBioType(String bioType) {
		this.bioType = bioType;
	}
	public String getFmrType() {
		return fmrType;
	}
	public void setFmrType(String fmrType) {
		this.fmrType = fmrType;
	}
	public boolean isUsesOtp() {
		return usesOtp;
	}
	public void setUsesOtp(boolean usesOtp) {
		this.usesOtp = usesOtp;
	}
	public String getPidData() {
		return pidData;
	}
	public void setPidData(String pidData) {
		this.pidData = pidData;
	}
}
