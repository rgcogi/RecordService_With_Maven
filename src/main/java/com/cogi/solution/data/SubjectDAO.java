package com.cogi.solution.data;

import java.util.List;

import com.cogi.solution.domain.Subject;

public interface SubjectDAO {
	public Subject addNewSubject(Subject subject);
	public boolean deleteNewSubject (Subject subject);
	public List <Subject> getAllSubject();
	
}
