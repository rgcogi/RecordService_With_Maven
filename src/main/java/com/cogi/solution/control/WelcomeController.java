package com.cogi.solution.control;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cogi.solution.domain.Student;
import com.cogi.solution.domain.Subject;
import com.cogi.solution.services.ScoreService;
import com.cogi.solution.services.SubjectManagementService;

@Controller
public class WelcomeController {
	@Autowired // (you can use @Resource as well)
	private ScoreService scoreService;

	@Autowired
	SubjectManagementService subjectService;
	
	@RequestMapping("/welcome")
	public ModelAndView viewAllBooks(Principal currentuser)
	{
		List<Subject> allSubjects = subjectService.getAllSubject();
		Map<String, Object> results = new HashMap<String, Object>();		
		results.put("allSubjects", allSubjects);
		results.put("currentUser",currentuser.getName());
		return new ModelAndView("displayAllSubjects", "results", results);
	}
	
	@RequestMapping("/viewAllSubjects")
	public ModelAndView viewAllSubjects()
	{
		List<Subject> allSubjects = scoreService.getEntireCatalogue();
		return new ModelAndView("displaySemesterSubjects", "semesterSubjects", allSubjects);
	}
	
	@RequestMapping("/logins")
	public ModelAndView login()
	{
		
		return new ModelAndView("login", "student", new Student());
	}
}
