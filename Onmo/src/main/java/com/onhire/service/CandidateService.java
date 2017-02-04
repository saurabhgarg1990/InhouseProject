package com.onhire.service;

import java.util.Date;
import java.util.List;

import com.onhire.model.CandidateDetails;
import com.onhire.model.UserDetails;

public interface CandidateService {
	
public void addCandidate(CandidateDetails details);
public List<CandidateDetails> listCandidate();
public CandidateDetails findCandidateByPK(String aadhar);
public Date getAppliedDate(String aadhar);
}
