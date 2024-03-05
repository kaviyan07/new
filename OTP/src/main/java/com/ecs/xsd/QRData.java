package com.ecs.xsd;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "QRData")
@XmlAccessorType(XmlAccessType.FIELD)
public class QRData implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@XmlAttribute(name="type", required = false)
	private String type;

	@XmlAttribute(name="name", required = false)
	private String name;

	@XmlAttribute(name="uid", required = false)
	private String uid;

	@XmlAttribute(name="gender", required = false)
	private String gender;

	@XmlAttribute(name="mobileMasked", required = false)
	private String mobileMasked;

	@XmlAttribute(name="emailMasked", required = false)
	private String emailMasked;

	@XmlAttribute(name="dob", required = false)
	private String dob;
	
	@XmlAttribute(name="careof", required = false)
	private String careOf;
	
	@XmlAttribute(name="district", required = false)
	private String district;

	@XmlAttribute(name="landmark", required = false)
	private String Landmark;

	@XmlAttribute(name="house", required = false)
	private String house;

	@XmlAttribute(name="location", required = false)
	private String location;

	@XmlAttribute(name="pincode", required = false)
	private String pincode;

	@XmlAttribute(name="po", required = false)
	private String postOffice;

	@XmlAttribute(name="state", required = false)
	private String state;

	@XmlAttribute(name="street", required = false)
	private String street;

	@XmlAttribute(name="subdist", required = false)
	private String subDistrict;

	@XmlAttribute(name="vtc", required = false)
	private String vtc;

	@XmlAttribute(name="address", required = false)
	private String address;

	@XmlAttribute(name="image", required = false)
	private String image;

	@XmlAttribute(name="referenceNumber", required = false)
	private String referenceNumber;

	@XmlAttribute(name="mobileHash", required = false)
	private String mobileHash;

	@XmlAttribute(name="emailHash", required = false)
	private String emailHash;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getCareOf() {
		return careOf;
	}

	public void setCareOf(String careOf) {
		this.careOf = careOf;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getLandmark() {
		return Landmark;
	}

	public void setLandmark(String landmark) {
		Landmark = landmark;
	}

	public String getHouse() {
		return house;
	}

	public void setHouse(String house) {
		this.house = house;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getPostOffice() {
		return postOffice;
	}

	public void setPostOffice(String postOffice) {
		this.postOffice = postOffice;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getSubDistrict() {
		return subDistrict;
	}

	public void setSubDistrict(String subDistrict) {
		this.subDistrict = subDistrict;
	}

	public String getVtc() {
		return vtc;
	}

	public void setVtc(String vtc) {
		this.vtc = vtc;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getReferenceNumber() {
		return referenceNumber;
	}

	public void setReferenceNumber(String referenceNumber) {
		this.referenceNumber = referenceNumber;
	}

	public String getMobileHash() {
		return mobileHash;
	}

	public void setMobileHash(String mobileHash) {
		this.mobileHash = mobileHash;
	}

	public String getEmailHash() {
		return emailHash;
	}

	public void setEmailHash(String emailHash) {
		this.emailHash = emailHash;
	}

	public String getMobileMasked() {
		return mobileMasked;
	}

	public void setMobileMasked(String mobileMasked) {
		this.mobileMasked = mobileMasked;
	}

	public String getEmailMasked() {
		return emailMasked;
	}

	public void setEmailMasked(String emailMasked) {
		this.emailMasked = emailMasked;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
}