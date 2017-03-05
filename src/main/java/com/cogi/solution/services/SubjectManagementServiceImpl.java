package com.cogi.solution.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cogi.solution.data.SubjectDAOImpl;
import com.cogi.solution.domain.Student;
import com.cogi.solution.domain.Subject;

@Service
@Transactional
public class SubjectManagementServiceImpl implements SubjectManagementService {

	@Autowired
	SubjectDAOImpl subjectDAO;
	
	
	
	@Override
	public List <Subject> getAllSubject() {
		
		return subjectDAO.getAllSubject();
	}

	@Override
	public Subject registerNewSubject(Subject newsubject) {
		Subject subject = subjectDAO.addNewSubject(newsubject);
		
		return subject;
		 
	}

	@Override
	public Subject updateSubject(Subject subject) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteSubject(Subject subject) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Subject> findStudentSubjects(Student student) {
		// TODO Auto-generated method stub
		return null;
	}

	 

}
