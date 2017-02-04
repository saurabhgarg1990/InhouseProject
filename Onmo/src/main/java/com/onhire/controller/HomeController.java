package com.onhire.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@RequestMapping(value = "/")
	public ModelAndView showIndexPage() {
		
		ModelAndView modelAndView = new ModelAndView("index");
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/userLogin")
	public ModelAndView showUserPage() {
		
		ModelAndView modelAndView = new ModelAndView("userLogin");
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/registerCandidate")
	public ModelAndView showFresherPage() {
		
		ModelAndView modelAndView = new ModelAndView("registerCandidate");
		
		return modelAndView;
	}
	
	
	@RequestMapping(value = "/userRegister")
	public ModelAndView showUserRegPage() {
		
		ModelAndView modelAndView = new ModelAndView("userRegister");
		
		return modelAndView;
	}
	
	/*@RequestMapping(value = "/redirect", method = RequestMethod.GET)
	   public String redirect() {
	     
	      return "redirect:/registerFresher";
	   }
	
	@RequestMapping(value = "/registerFresher",method = RequestMethod.GET)
	public ModelAndView showRegFresher() {
		
		ModelAndView modelAndView = new ModelAndView("registerFresher");
		return modelAndView;
	}
	*/

}
