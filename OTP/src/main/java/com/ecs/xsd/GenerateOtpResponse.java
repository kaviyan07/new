package com.ecs.xsd;

public class GenerateOtpResponse {
    private boolean error;
    private String errorMessage;
    private String otpTxnId;
    private String message;
	public boolean isError() {
		return error;
	}
	public void setError(boolean error) {
		this.error = error;
	}
	public String getErrorMessage() {
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
	public String getOtpTxnId() {
		return otpTxnId;
	}
	public void setOtpTxnId(String otpTxnId) {
		this.otpTxnId = otpTxnId;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
}
