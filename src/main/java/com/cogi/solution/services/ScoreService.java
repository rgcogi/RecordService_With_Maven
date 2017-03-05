package com.cogi.solution.services;

import java.util.List;

import com.cogi.solution.domain.Subject;

public interface ScoreService {
	public List<Subject> getEntireCatalogue();
	public void recordScore(Subject subject, double score);
	public void updateScore(Subject subject, double score);
	public double findScore(int studentId, Subject subject);
	
}
