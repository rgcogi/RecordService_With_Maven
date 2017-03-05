package com.cogi.solution.services;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cogi.solution.data.NewStudentDAOImpl;
import com.cogi.solution.domain.Student;

@Service
@Transactional
public class StudentManagementServiceImpl implements StudentManagementService {
	//static Logger logger = LogManager.getLogger();
	@Autowired
	private NewStudentDAOImpl newStudentDAO;
	
	@Override
	public Student registerNewStudent(Student student) {
		boolean result = newStudentDAO.addNewStudent(student);
		
		return student;
	}

	@Override
	public List<Student> searchStudentByLooseMatch(String strCriteria) {
		// TODO Auto-generated method stub
	//	logger.trace("Looking for "+ strCriteria);
		
		List<Student> returnList = new ArrayList <Student>();
		
		List<Student> allStudents = newStudentDAO.getAllStudent();
		for (Student next : allStudents)
		{
			if (next.getFirstName().toUpperCase().contains(strCriteria.toUpperCase()))
			{				
				returnList.add(next);
			//	logger.trace(returnList);
			}
		}
		
		Collections.sort(returnList, new Comparator<Student>(){
					
					public int compare(Student student1, Student student2){
						return student1.getFirstName().compareTo(student2.getFirstName());
					}								
		});
		//logger.info("Completed Search for "+ strCriteria);
		return returnList;
	}

}
