package com.ecs.xsd;

public class ValidateOtpRequest {
    private String aadhaarNumber;
    private String consent;
    private String otpValue;
    private String otpTxnId;
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
	public String getOtpValue() {
		return otpValue;
	}
	public void setOtpValue(String otpValue) {
		this.otpValue = otpValue;
	}
	public String getOtpTxnId() {
		return otpTxnId;
	}
	public void setOtpTxnId(String otpTxnId) {
		this.otpTxnId = otpTxnId;
	}
}
