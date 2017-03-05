package com.cogi.solution.control;

import java.util.List;

 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cogi.solution.domain.Student;
import com.cogi.solution.services.StudentManagementService;
import com.cogi.solution.services.SubjectManagementService;

@Controller
public class SearchController {
	 
	
	@Autowired // (you can use @Resource as well)
	private SubjectManagementService subjectService;
	
	@Autowired
	private StudentManagementService studentService;
	 	
	//@RequestMapping(method = RequestMethod.GET)
	@RequestMapping("/search")
	public ModelAndView renderSearch()
	{		
//		logger.debug("In GET method RenderSearch");
//		logger.info("In GET method RenderSearch");
		return new ModelAndView("search", "student", new Student());
	}
	@RequestMapping("/looseSearch")
	public @ResponseBody List<Student> performSearch(@RequestParam("CHARS") String chars)
 	{
//		logger.debug("In Controller method performSearch()");
//		logger.info("I'm done");
		return studentService.searchStudentByLooseMatch(chars);
	} 
 
}
