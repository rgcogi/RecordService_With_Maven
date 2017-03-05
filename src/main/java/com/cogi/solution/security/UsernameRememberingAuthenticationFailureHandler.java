package com.cogi.solution.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

public class UsernameRememberingAuthenticationFailureHandler implements AuthenticationFailureHandler
{


	private UsernamePasswordAuthenticationFilter filter;
	
	private String redirectTarget;
	
	public void setRedirectTarget(String redirectTarget) {
		this.redirectTarget = redirectTarget;
	}


	public void setFilter(UsernamePasswordAuthenticationFilter filter) {
		this.filter = filter;
	}


	@Override
	public void onAuthenticationFailure(HttpServletRequest request,
			HttpServletResponse response, AuthenticationException exception)
			throws IOException, ServletException 
	{
		// TODO Auto-generated method stub
		
		//System.out.println("!!!!Failed Login Attempt");
		//find out what the username was
		String usernameProperty = filter.getUsernameParameter();
		
		String username = request.getParameter(usernameProperty);
		System.out.println(username);
		//redirect, to the url <context-root>/login.jsp?error&username=
		response.sendRedirect(request.getContextPath()+redirectTarget+"?error&username="+username);
		
	}

}
