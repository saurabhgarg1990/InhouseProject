package com.onhire.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.onhire.model.UserDetails;

import com.onhire.service.UserService;

@Controller
public class UserController {
	
	
	private UserService userService;

	@Autowired(required = true)
	@Qualifier(value = "userService")
	public void setCandidateService(UserService us) {
		this.userService = us;
	}
	


	@RequestMapping(value="/registerUser",method = RequestMethod.POST)
	public String userRegistration(@ModelAttribute("userForm") UserDetails user,HttpServletRequest request,Model model,RedirectAttributes attributes)
	{
		UserDetails ud=userService.findUserByEmpId(request.getParameter("empId"));
		if(ud==null){
		userService.saveUserDetail(user);
			attributes.addFlashAttribute("successMsg","You have been successfully registered");
		}
		else
			attributes.addFlashAttribute("errorMsg","The user with Employee Id "+request.getParameter("empId")+" is already registered");
		return "redirect:/userRegister";
	}
	
	@RequestMapping(value="/loginUser",method = RequestMethod.POST)
	public void userLogin(HttpServletRequest request)
	{
				String emailId=request.getParameter("email");
				
	}

	
}
