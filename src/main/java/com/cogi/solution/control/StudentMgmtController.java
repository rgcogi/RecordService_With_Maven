package com.cogi.solution.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cogi.solution.domain.Student;
import com.cogi.solution.services.AuthenticationService;
import com.cogi.solution.services.ScoreService;
import com.cogi.solution.services.StudentManagementService;

@Controller
@RequestMapping("/addStudent")
public class StudentMgmtController {
	@Autowired // (you can use @Resource as well)
	private ScoreService scoreService;
	
	@Autowired
	private AuthenticationService authenticationService;
	@Autowired
	private StudentManagementService studentService;
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView present()
	{		
		System.out.println("INFO: In GET method");
		return new ModelAndView("addStudent", "student", new Student());
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView processForm(Student newStudent, Errors result)
	{		
		System.out.println("INFO: In POST method");
		
		if (result.hasErrors()){
			
			System.out.println("INFO: Representing New Student Form");
			return new ModelAndView("addStudent", "student", new Student());
			
		}		
		else
		{		
			studentService.registerNewStudent(newStudent);
			return new ModelAndView("displayNewStudent", "newstudent", newStudent);
		}
		 
	}
	
}
