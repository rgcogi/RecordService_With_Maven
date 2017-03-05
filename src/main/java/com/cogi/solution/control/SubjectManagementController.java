package com.cogi.solution.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.cogi.solution.domain.Subject;
import com.cogi.solution.services.SubjectManagementService;

@Controller
@RequestMapping("/addSubject")
public class SubjectManagementController {
	
	@Autowired
	SubjectManagementService subjectService;
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView present()
	{		
		System.out.println("INFO: In GET method");
		return new ModelAndView("addSubject", "subject", new Subject());
	}
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView processForm(Subject newSubject, Errors result)
	{		
		System.out.println("INFO: In Subject POST method");
		
		if (result.hasErrors()){
			
			System.out.println("INFO: Representing New Subject Form");
			return new ModelAndView("addSubject", "subject", new Subject());
			
		}		
		else
		{		
			subjectService.registerNewSubject(newSubject);
			return new ModelAndView("displayNewSubject", "newsubject", newSubject);
		}
		 
	}
}
