package com.onhire.service;

import com.onhire.model.UserDetails;

public interface UserService {
public void saveUserDetail(UserDetails user);
public UserDetails findUserByEmpId(String empId);
}
