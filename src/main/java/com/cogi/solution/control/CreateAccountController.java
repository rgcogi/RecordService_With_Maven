package com.cogi.solution.control;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cogi.solution.domain.newUserFormObject;

@Controller
@RequestMapping("/createAccount")
public class CreateAccountController {
	@Autowired
	private JdbcUserDetailsManager userManager;
	
	@Autowired
	@Qualifier("cogiSolutionAuthenticator")
	private AuthenticationManager authenticationManager;
	
	@Autowired
	private BCryptPasswordEncoder encoder;
	
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView show(){
		return new ModelAndView("create-account", "newUserFormObject", new newUserFormObject());
	}
	
	
	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView processForm(@Valid newUserFormObject newUser, Errors results){
		
		if (results.hasErrors()){
			return new ModelAndView("create-account", "userFormObject", newUser);
		}
		//send this to the database;
		List<GrantedAuthority> roles = new ArrayList<GrantedAuthority>();
		roles.add(new SimpleGrantedAuthority("ROLE_USER"));
		
		String encodePassword =encoder.encode(newUser.getPassword());
		User user = new User(newUser.getUsername(),encodePassword,roles);
		
		try
		{
			userManager.createUser(user);
		}catch (DuplicateKeyException dupexc){
			results.rejectValue("username", "username.unique");
			return new ModelAndView("create-account", "userFormObject", newUser);

			
		}
		Authentication credentials = new UsernamePasswordAuthenticationToken(user.getUsername(), newUser.getPassword());
		credentials=authenticationManager.authenticate(credentials);
		if (credentials.isAuthenticated())
		{
			//GOOD!
			SecurityContextHolder.getContext().setAuthentication(credentials);			
			return new ModelAndView("redirect:/welcome.do");
		}
		else{
			throw new RuntimeException("For Some reason, the user didn't login even though it should have been automatic");
			
		}
		
	}

}
