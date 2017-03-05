package com.cogi.solution.services;

import java.util.List;

import com.cogi.solution.domain.Student;
import com.cogi.solution.domain.Subject;

public interface SubjectManagementService {
	public List <Subject> getAllSubject();
	public Subject registerNewSubject(Subject subjet);
	public Subject updateSubject(Subject subject);
	public boolean deleteSubject(Subject subject);
	public List <Subject> findStudentSubjects(Student student);
}
