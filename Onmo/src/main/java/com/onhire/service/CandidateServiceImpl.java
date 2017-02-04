package com.onhire.service;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.onhire.dao.CandidateDao;
import com.onhire.model.CandidateDetails;

@Service
public class CandidateServiceImpl implements CandidateService{

	private CandidateDao candidateDao;

	public void setCandidateDao(CandidateDao candidateDao) {
		this.candidateDao = candidateDao;
	}


	@Transactional
	public void addCandidate(CandidateDetails details) {
		// TODO Auto-generated method stub
		this.candidateDao.saveDetail(details);
		
	}

	@Transactional
	public List<CandidateDetails> listCandidate() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public CandidateDetails findCandidateByPK(String aadhar) {
		// TODO Auto-generated method stub
		return candidateDao.findCandidateByPK(aadhar);
	}


	@Override
	public Date getAppliedDate(String aadhar) {
		// TODO Auto-generated method stub
		return candidateDao.getAppliedDate(aadhar);
	}
	

}
