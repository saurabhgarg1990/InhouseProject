package com.onhire.dao;

import com.onhire.model.CandidateDetails;

import java.util.Date;
import java.util.List;


public interface CandidateDao {
	

	public void saveDetail(CandidateDetails details);
	public List<CandidateDetails> listCandidate();
	public CandidateDetails findCandidateByPK(String aadhar);
	public Date getAppliedDate(String aadhar);
}
