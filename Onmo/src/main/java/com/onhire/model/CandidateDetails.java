package com.onhire.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

import java.sql.Blob;

@Entity
@Table(name = "candidatedetails")
// @IdClass(UserIdentity.class)
public class CandidateDetails implements Serializable {
	// @Id
	// @Column(name="id")
	// @GeneratedValue(strategy=GenerationType.IDENTITY)
	// private int id;

	@Column(name = "candId")
	private String candId;
	@Column(name = "name")
	private String name;
	@Column(name = "email")
	private String email;
	@Column(name = "mobile_no")
	private String mobile;
	@Id
	@Column(name = "aadharCard")
	private String identity;
	@Column(name = "experience")
	private String exp;
	@Column(name = "modeOfHire")
	private String modeOfHire;
	@Column(name = "resume")
	@Lob
	private Blob resume;
	@Column(name = "dateOfApp")
	private String appliedDate;

	public CandidateDetails() {
		super();
		// TODO Auto-generated constructor stub
	}



	public CandidateDetails(String candId, String name, String email, String mobile, String identity, String exp,
			String modeOfHire, Blob resume, String appliedDate) {
		super();
		this.candId = candId;
		this.name = name;
		this.email = email;
		this.mobile = mobile;
		this.identity = identity;
		this.exp = exp;
		this.modeOfHire = modeOfHire;
		this.resume = resume;
		this.appliedDate = appliedDate;
	}



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

	public String getIdentity() {
		return identity;
	}

	public void setIdentity(String identity) {
		this.identity = identity;
	}

	public String getExp() {
		return identity;
	}

	public void setExp(String exp) {
		this.exp = exp;
	}

	public String getModeOfHire() {
		return modeOfHire;
	}

	public void setModeOfHire(String modeOfHire) {
		this.modeOfHire = modeOfHire;
	}

	public Blob getResume() {
		return resume;
	}

	public void setResume(Blob resume) {
		this.resume = resume;
	}

	public String getAppliedDate() {
		return appliedDate;
	}

	public void setAppliedDate(String ppliedDate) {
		this.appliedDate = appliedDate;
	}

	public String toString() {
		StringBuilder sb = new StringBuilder();
		String separator = "\t";
		sb.append(name + separator);
		sb.append(email + separator);
		sb.append(mobile);
		sb.append(separator);
		sb.append(identity);
		sb.append(separator);
		sb.append(exp);
		sb.append(separator);
		sb.append(modeOfHire);
		sb.append(separator);
		sb.append(appliedDate);
		sb.append(separator);
		sb.append(resume);
		return sb.toString();
	}

}
