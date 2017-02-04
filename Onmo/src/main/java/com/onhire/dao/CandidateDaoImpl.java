package com.onhire.dao;
import java.util.Date;
import java.util.List;

import org.hibernate.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.onhire.model.CandidateDetails;
import com.onhire.model.UserDetails;

@Repository
public class CandidateDaoImpl implements CandidateDao{
	private static final Logger logger = LoggerFactory.getLogger(CandidateDaoImpl.class);

private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	public void saveDetail(CandidateDetails details) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(details);
		logger.info("Person saved successfully, Candidate Details="+details);
	}
	
	@SuppressWarnings("unchecked")
	
	public List<CandidateDetails> listCandidate() {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		List<CandidateDetails> list = session.createQuery("from candidate").list();
		for(CandidateDetails c : list){
			logger.info("Person List::"+c);
		}
		return list;
	}

	@Override
	public CandidateDetails findCandidateByPK(String aadhar) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from CandidateDetails c where c.identity = :aadhar");
		query.setString("aadhar",aadhar);
		List<CandidateDetails> list = query.list();
		if (!list.isEmpty())
			return list.get(0);
		else
			return null;

	}

	public Date getAppliedDate(String aadhar){
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("select c.appliedDate from CandidateDetails c where c.identity = :aadhar");
		query.setString("aadhar",aadhar);
		List<Date> result=query.list();
		return result.get(0);
	}

}
