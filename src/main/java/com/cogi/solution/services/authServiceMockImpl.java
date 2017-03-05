package com.cogi.solution.services;

import java.util.ArrayList;
import java.util.List;

import com.cogi.solution.domain.Student;
import com.cogi.solution.domain.Subject;


public class authServiceMockImpl implements AuthenticationService {

private List<Student> allStudents = new ArrayList<Student>();
	
	public authServiceMockImpl (){		
		allStudents.add(new Student("Babatunde","Bello","rgcogi@gmail.com", "male","testmepwd"));
		allStudents.add(new Student("Remi","Bello","remicogi@gmail.com", "female","testmepwd"));
		allStudents.add(new Student("David","Bello","davecogi@gmail.com", "male","testmepwd"));
		allStudents.add(new Student("Joy","Bello","joycogi@gmail.com", "female","testmepwd"));
		allStudents.add(new Student("Joshua","Bello","joshcogi@gmail.com", "male","testmepwd"));
		 
	}
	@Override
	public Student validateUser(Student newStudent) {
		System.out.println("INFO: In validateUser()");
		// TODO Auto-generated method stub
		Student acct = null;
		System.out.println("INFO: Total Size of Students= " + allStudents.size());		
		for (Student next : allStudents)
		{
			if ((next.getUserID().equals(newStudent.getUserID())) && (next.getPassword().equals(newStudent.getPassword())))
			{
				System.out.println("INFO: Found a match");				
				System.out.println(next.getFirstName());
				System.out.println(next.getLastName());
				return next;				
			}
		}
		 
		return acct;
	}

	@Override
	public List<Student> getActiveUsers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isUserActive(Student newStudent) {
		// TODO Auto-generated method stub
		return false;
	}

}
