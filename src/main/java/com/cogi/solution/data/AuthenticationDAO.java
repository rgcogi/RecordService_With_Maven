package com.cogi.solution.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.cogi.solution.domain.Student;

@Repository
public class AuthenticationDAO implements AuthenticationDaoIF{
	
	//threads managed automatically
	//open a new EM for each thread. for each transaction
	@PersistenceContext
	private EntityManager em;
	
	public List<Student> getAllStudents(){
		
		return em.createNamedQuery("allStudent").getResultList();
	}
	public Student getStudentByUserID (String userID, String password)  {
		//throws NoResultException
		try 
		{
			Student student = (Student)em.createNamedQuery("studentByUserID").setParameter("userID", userID)
					.setParameter("password", password).getSingleResult();
			System.out.println("(Student)em.createNamedQuery.............");
			if  (student == null)
			{
				System.out.println("ERROR: Unable to find the user");
				//throw new NoResultException();
				
			}
			return student;
		}catch (Exception Ex){
			System.out.println("ERROR: No Object found");
			return null;
		}
	}
	@Override
	public List<Student> getAllActiveUsers() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
