package com.cogi.solution.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Student {
	
	//referential integrity
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	private String firstName;
	private String lastName;
	private String userID;
	private String gender;
	private String password;
	
	//Hibernate will create a blank object and then call the set methods to populate the Object
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	//default constructor. required by Hibernate. create a blank object be4 calling the set methods to populate the object
	public  Student(){
		
	}
	public Student(String firstName, String lastName, String userID,
			String gender, String password) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.userID = userID;
		this.gender = gender;
		this.password = password;
	}
	
}
