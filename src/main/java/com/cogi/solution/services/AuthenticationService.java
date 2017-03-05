package com.cogi.solution.services;

import java.util.List;

import com.cogi.solution.domain.Student;

public interface AuthenticationService {
	public Student validateUser(Student newStudent);
	public List <Student> getActiveUsers();
	public boolean isUserActive (Student newStudent);
	
}
