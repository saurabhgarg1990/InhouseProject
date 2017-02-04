package com.onhire.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.hibernate.annotations.NamedQueries;
import org.hibernate.annotations.NamedQuery;


//@NamedQueries({
//@NamedQuery(
//name = "UserDetails.findUserByEmpId",
//query = "from userdetails u where u.empId = :empId"
//)
//})

@Entity
@Table(name = "userdetails")
public class UserDetails {

	@Id
	@Column(name = "empId")
	private String empId;
	@Column(name = "name")
	private String name;
	@Column(name = "email")
	private String email;
	@Column(name = "dept")
	private String dept;
	@Column(name = "role")
	private String role;
	@Column(name = "pwd")
	private String pwd;

	@Override
	public String toString() {
		return "UserDetails [empId=" + empId + ", name=" + name + ", email=" + email + ", dept=" + dept + ", role="
				+ role + "]";
	}

	public String getEmpId() {
		return empId;
	}

	public void setEmpId(String empId) {
		this.empId = empId;
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

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}


	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

}
