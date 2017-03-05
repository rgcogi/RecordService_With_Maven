package com.cogi.solution.client;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.cogi.solution.domain.Student;

public class HibernateTestHarness {
	public static String persistentUnitName = "myRecordDBConfig";
	public static String firstName = "Emimimo";
	public static String lastName = "Ologo";
	public static String gender = "male";
	public static String userid = "eologo";
	public static String password = "testmepwd";
	/**
	 * @param args
	 */
	//static Logger logger = LogManager.getLogger(HibernateTestHarness.class);
	public static void main(String[] args) {
		
		//logger.debug("Test Harness Debug");
		// TODO Auto-generated method stub
		EntityManagerFactory emf = Persistence.createEntityManagerFactory(persistentUnitName);
		
		EntityManager em = emf.createEntityManager();
		EntityTransaction tx = em.getTransaction();
		tx.begin();
		Student newstudent = new Student(firstName,lastName,userid,gender,password);
		//logger.error("Error = "+firstName,lastName);
		em.persist(newstudent);
		tx.commit();
		em.close();

	}

}
