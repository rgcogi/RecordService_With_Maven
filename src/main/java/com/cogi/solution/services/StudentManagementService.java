package com.cogi.solution.services;

import java.util.List;

import com.cogi.solution.domain.Student;

public interface StudentManagementService {
	public  Student registerNewStudent(Student student);
	public List<Student> searchStudentByLooseMatch(String strCriteria);
}
