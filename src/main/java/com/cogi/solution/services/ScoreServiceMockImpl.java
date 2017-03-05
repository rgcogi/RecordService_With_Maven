package com.cogi.solution.services;

import java.util.ArrayList;
import java.util.List;

import com.cogi.solution.domain.Subject;



public class ScoreServiceMockImpl implements ScoreService {
	private List<Subject> testSubjects = new ArrayList<Subject>();
	
	public ScoreServiceMockImpl (){
		
		testSubjects.add(new Subject(1,"Math","MTH001","Mathematics","Mrs Salas"));
		testSubjects.add(new Subject(2,"Language","ENG001","English","Mrs Salas"));
		testSubjects.add(new Subject(3,"Phonics","PHN001","American Accent","Mrs Salas"));
		testSubjects.add(new Subject(4,"Reading","RED001","Reaading","Mrs Salas"));
		testSubjects.add(new Subject(5,"Spelling","SPL001","Spelling of Words","Mrs Salas"));
		testSubjects.add(new Subject(6,"Health","HLT001","Health Education","Mrs Salas"));
		testSubjects.add(new Subject(7,"Penmanship","PMS001","Hand Writing","Mrs Salas"));
		testSubjects.add(new Subject(8,"Art","ART001","Art Works","Mrs Salas"));
		testSubjects.add(new Subject(9,"Music","MUS001","Instruments and Songs","Mrs Salas"));
		testSubjects.add(new Subject(10,"Physical Education","PHE001","Sports","Mrs Salas"));
		testSubjects.add(new Subject(11,"Bible","BLE001","Bible Memorisation","Mrs Salas"));
		 
	}
	public List<Subject> getEntireCatalogue() 
	{
		return new ArrayList<Subject>(testSubjects);
	}
	@Override
	public void recordScore(Subject subject, double score) {
		// TODO Auto-generated method stub
		 
	}

	@Override
	public void updateScore(Subject subject, double score) {
		// TODO Auto-generated method stub

	}

	@Override
	public double findScore(int studentId, Subject subject) {
		// TODO Auto-generated method stub
		return 0;
	}

}
