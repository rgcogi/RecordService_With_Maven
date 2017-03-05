package com.cogi.solution.control;

import java.security.Principal;
import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Level;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/error403")
public class AdminController {

	static Logger logger = LogManager.getLogger(AdminController.class);
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView accessDenied(Principal user)
	{	
		logger.log(Level.DEBUG,"In AdminController()");
		
		if (user !=null){
			String username = user.getName();
			String customMsg = "Sorry, You Do Not Have Sufficient Privilege to Access this Page";
			Map<String, Object> results = new HashMap<String, Object>();		
			results.put("username", username);
			results.put("customMsg", customMsg);
			logger.log(Level.WARN,"User "+username+ " does Not Have Sufficient Privilege to Access requested Page");
			
			return new ModelAndView("displayAccessDenied", "results", results);	
		}
		else{
			
			String customMsg = "Sorry, You Do Not Have Sufficient Privilege to Access this Page";
			Map<String, Object> results = new HashMap<String, Object>();			
			results.put("customMsg", customMsg);			
			logger.log(Level.WARN,"User does Not Have Sufficient Privilege to Access requested Page");
			return new ModelAndView("displayAccessDenied", "results", results);	
		}		
	}
}
