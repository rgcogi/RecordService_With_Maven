package com.cogi.solution.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.cogi.solution.domain.Subject;

@Repository
public class SubjectDAOImpl implements SubjectDAO {
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Subject addNewSubject(Subject newsubject) {
		em.persist(newsubject);
		return newsubject;
	}

	@Override
	public boolean deleteNewSubject(Subject subject) {
		
		return false;
	}

	@Override
	public List<Subject> getAllSubject() {
		long size = (Long) em.createNamedQuery("getSubjectCount").getSingleResult();
		System.out.println("We have "+ size + " students");
		 
		return em.createNamedQuery("allSubject").getResultList();
	}

}
