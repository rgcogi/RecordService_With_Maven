package com.cogi.solution.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component("subject")
@Entity
public class Subject implements java.io.Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	private String title;
	private String code;
	private String description;
	private String tutor;
	
	public Subject(){
		
	}
	public Subject( String title, String code, String description,
			String tutor) {
		
	 
		this.title = title;
		this.code = code;
		this.description = description;
		this.tutor = tutor;
	}
	
	public Subject(int id, String title, String code, String description,
			String tutor) {
		super();
		this.id = id;
		this.title = title;
		this.code = code;
		this.description = description;
		this.tutor = tutor;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getTutor() {
		return tutor;
	}
	public void setTutor(String tutor) {
		this.tutor = tutor;
	}
	
	
}
