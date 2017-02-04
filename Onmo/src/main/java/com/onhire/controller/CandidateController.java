package com.onhire.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.exception.ConstraintViolationException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.onhire.dao.CandidateDaoImpl;
import com.onhire.model.CandidateDetails;

import com.onhire.service.CandidateService;

@Controller
public class CandidateController {

	private static final Logger logger = LoggerFactory.getLogger(CandidateDaoImpl.class);
	@Autowired
	@Qualifier(value = "hibernate4AnnotatedSessionFactory")
	private SessionFactory sessionFactory;
	private CandidateService candidateService;

	@Autowired(required = true)
	@Qualifier(value = "candidateService")
	public void setCandidateService(CandidateService cs) {
		this.candidateService = cs;
	}

	/*
	 * @RequestMapping(value = "/success", method = RequestMethod.GET) public
	 * String listCandidate(Model model) { //model.addAttribute("candidate", new
	 * CandidateDetails()); //model.addAttribute("listCandidates",
	 * this.candidateService.listCandidate()); return "Success"; }
	 */

	//
	// @RequestMapping("/reward")
	// public String listRewards(Map<String, Object> model) {
	// model.put("rewardList", rewardService.listReward());
	// model.put("reward", new Reward())
	// return "reward";
	// }

	// to add candidate details in database

	@RequestMapping(value = "/candidateAdd", method = RequestMethod.POST)

	public String addFresherDetails(@ModelAttribute("candForm") CandidateDetails candidateDetails,
			@RequestParam("file") MultipartFile file, ModelMap model, HttpServletRequest httpServletRequest,RedirectAttributes attributes)
					throws IOException {
		
	//	System.out.println(sessionFactory);
		if(candidateService.findCandidateByPK(httpServletRequest.getParameter("identity"))!=null){
		Session currentSession = sessionFactory.openSession();
		System.out.println("File " + file.getName() + "received at controller");
		candidateDetails.setResume(Hibernate.getLobCreator(currentSession).createBlob(file.getBytes()));
		String mode = httpServletRequest.getParameter("mode");
		if (!mode.equals("Direct") && !mode.equals("JobPortal"))
			candidateDetails.setModeOfHire(mode + "_" + httpServletRequest.getParameter("modeName") + "_"
					+ httpServletRequest.getParameter("modeId"));
		else
			candidateDetails.setModeOfHire(mode);
			candidateService.addCandidate(candidateDetails);
			attributes.addFlashAttribute("successMsg","Your application has been submitted successfully!!!");
		}
		else{
			
			attributes.addFlashAttribute("errorMsg","You have already applied!!!!");
		}
			
			
		return "redirect:/registerCandidate";
	}

}
