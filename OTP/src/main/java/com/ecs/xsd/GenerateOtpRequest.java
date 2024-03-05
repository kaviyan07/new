package com.ecs.xsd;

public class GenerateOtpRequest {
    private String aadhaarNumber;
    private String consent;
    private boolean sendSMS;
    private boolean sendEmail;
    
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
	public boolean isSendSMS() {
		return sendSMS;
	}
	public void setSendSMS(boolean sendSMS) {
		this.sendSMS = sendSMS;
	}
	public boolean isSendEmail() {
		return sendEmail;
	}
	public void setSendEmail(boolean sendEmail) {
		this.sendEmail = sendEmail;
	}
}
