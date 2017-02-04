package com.onhire.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.exception.ConstraintViolationException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Repository;

import com.onhire.model.UserDetails;

@Repository
public class UserDaoImpl implements UserDao {

	private static final Logger logger = LoggerFactory.getLogger(CandidateDaoImpl.class);

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@Override
	public void saveUserDetail(UserDetails user) {
		// TODO Auto-generated method stub

		Session session = this.sessionFactory.getCurrentSession();
		session.persist(user);
		logger.info("User saved successfully " + user);

	}

	@Override
	public UserDetails findUserByEmpId(String empId) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from UserDetails u where u.empId = :empId");
		query.setString("empId", empId);
		List<UserDetails> list = query.list();
		if (!list.isEmpty())
			return list.get(0);
		else
			return null;

	}

}
