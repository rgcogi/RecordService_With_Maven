package com.cogi.solution.data;

import java.util.List;

import com.cogi.solution.domain.Student;

public interface NewStudentDAO {
	
	public boolean addNewStudent(Student student);
	public boolean deleteNewStudent(Student student);
	public boolean updateNewStudent(Student student);
	public List<Student> getAllStudent();

}
