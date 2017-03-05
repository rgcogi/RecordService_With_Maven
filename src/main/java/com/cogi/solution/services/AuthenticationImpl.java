package com.cogi.solution.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cogi.solution.data.AuthenticationDAO;
import com.cogi.solution.domain.Student;

@Service
@Transactional
public class AuthenticationImpl implements AuthenticationService{
	
	@Autowired
	private AuthenticationDAO authenticationDao;
	
	@Override
	public Student validateUser(Student newStudent) {
		// TODO Auto-generated method stub
		System.out.println("INFO: In AuthenticationImpl () ");
		
		System.out.println("INFO: newStudent.getUserID() = "+newStudent.getUserID());
		return authenticationDao.getStudentByUserID(newStudent.getUserID(),newStudent.getPassword());
	}

	@Override
	public List<Student> getActiveUsers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isUserActive(Student newStudent) {
		// TODO Auto-generated method stub
		return false;
	}

}
