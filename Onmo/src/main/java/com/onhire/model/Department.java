package com.onhire.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="department")
public class Department 
{
	@Id
	@Column(name="deptId")
	  private Integer id;
	@Column(name="deptName")
	  private String name;
	    
	public Department(Integer id, String name) {
        super();
        this.id = id;
        this.name = name;
    }
 
  
 
    //Setters and Getters
 
    @Override
    public String toString() {
        return "DepartmentVO [id=" + id + ", name=" + name + "]";
    }
}