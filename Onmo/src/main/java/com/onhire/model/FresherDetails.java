package com.onhire.model;

import java.util.Date;

import javax.persistence.Column;

public class FresherDetails {

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getMotherName() {
		return motherName;
	}

	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getModeOfHire() {
		return hireMode;
	}

	public void setModeOfHire(String modeOfHire) {
		this.hireMode = modeOfHire;
	}

	public String getModeName() {
		return modeName;
	}

	public void setModeName(String modeName) {
		this.modeName = modeName;
	}

	public String getModeId() {
		return modeId;
	}

	public void setModeId(String modeId) {
		this.modeId = modeId;
	}

	public String getResume() {
		return resume;
	}

	public void setResume(String resume) {
		this.resume = resume;
	}

	public Date getAppliedDate() {
		return appliedDate;
	}

	public void setAppliedDate(Date appliedDate) {
		this.appliedDate = appliedDate;
	}

	public String toString() {
		StringBuilder sb = new StringBuilder();
		String separator = "\t";
		sb.append(email + separator);
		sb.append(name + separator);
		sb.append(mobile);
		sb.append(separator);
		sb.append(appliedDate);
		sb.append(separator);
		sb.append(motherName);
		sb.append(separator);
		return sb.toString();
	}

	private String name;

	private String email;

	private String mobile;

	private String motherName;
	private String fatherName;

	private String hireMode;
	private String modeName;
	private String modeId;
	private String resume;

	private Date appliedDate;

}
