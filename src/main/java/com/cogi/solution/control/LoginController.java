package com.cogi.solution.control;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cogi.solution.domain.Student;
import com.cogi.solution.domain.Subject;
import com.cogi.solution.services.AuthenticationService;
import com.cogi.solution.services.ScoreService;
import com.cogi.solution.services.SubjectManagementService;

@Controller
@RequestMapping("/signin")
public class LoginController {
	@Autowired // (you can use @Resource as well)
	private SubjectManagementService subjectService;
	
	@Autowired
	private AuthenticationService authenticationService;
	 
	 @RequestMapping(method = RequestMethod.GET)
		public ModelAndView processForm()
		{		

			Student student = new Student("Adesoji", "Olubara", "Oolubara", "female", "eseun");
			if (student !=null){		
				
				System.out.println("INFO: Authentication Successful...");			
				
				List<Subject> allSubjects = subjectService.getAllSubject();
				
				Map<String, Object> results = new HashMap<String, Object>();
				results.put("Student", student);
				results.put("allSubjects", allSubjects);

				return new ModelAndView("displayAllSubjects", "results", results);
			}
			else
			{
				System.out.println("INFO: Representing Form");
		
				return new ModelAndView("login", "student", new Student());
			}
			 
		}
	
}
