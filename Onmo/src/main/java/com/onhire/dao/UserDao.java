package com.onhire.dao;

import com.onhire.model.UserDetails;

public interface UserDao {
public void saveUserDetail(UserDetails user);

public UserDetails findUserByEmpId(String empId);
}
