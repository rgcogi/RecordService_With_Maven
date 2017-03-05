package com.cogi.solution.data;

import java.util.List;

import com.cogi.solution.domain.Student;

public interface AuthenticationDaoIF {
	
	public List<Student> getAllActiveUsers();
	public Student getStudentByUserID(String userID, String password);
	public List<Student> getAllStudents();

}
