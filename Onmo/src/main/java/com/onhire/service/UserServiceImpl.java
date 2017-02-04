package com.onhire.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.onhire.dao.UserDao;
import com.onhire.model.UserDetails;

@Service("userService")
public class UserServiceImpl implements UserService {

	private UserDao userDao;
	
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	 @Autowired(required=true)
	    private PasswordEncoder passwordEncoder;
	

	@Override
	@Transactional
	public void saveUserDetail(UserDetails user) {
		// TODO Auto-generated method stub

		  user.setPwd(passwordEncoder.encode(user.getPwd()));
		this.userDao.saveUserDetail(user);
		
		
	}


	@Override
	@Transactional
	public UserDetails findUserByEmpId(String empId) {
		// TODO Auto-generated method stub
		
		return userDao.findUserByEmpId(empId);
	}

}
