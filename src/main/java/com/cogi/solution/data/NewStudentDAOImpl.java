package com.cogi.solution.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.cogi.solution.domain.Student;

@Repository
public class NewStudentDAOImpl implements NewStudentDAO{
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public boolean addNewStudent(Student student) {
		

		em.persist(student);
		
		return true;
	}

	@Override
	public boolean deleteNewStudent(Student student) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateNewStudent(Student student) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Student> getAllStudent() {
		// TODO Auto-generated method stub
		return em.createNamedQuery("allStudent").getResultList();
	}

}
