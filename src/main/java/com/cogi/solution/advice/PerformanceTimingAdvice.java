package com.cogi.solution.advice;

import org.apache.log4j.Level;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Aspect;

import com.cogi.solution.control.AdminController;

public class PerformanceTimingAdvice {

	static Logger logger = LogManager.getLogger(PerformanceTimingAdvice.class);
	private static final int NANOSECONDS_IN_A_MILLISECOND = 1000000;

	public Object recordTiming(ProceedingJoinPoint jp) throws Throwable
	{
		double timeNow = System.nanoTime();
	
		try
		{
			Object returnValue = jp.proceed();
			return returnValue;
		}
		finally
		{		
			double timeAfter = System.nanoTime();
			
			double timeTaken = timeAfter - timeNow;
			
			double timeInMilliseconds = timeTaken / NANOSECONDS_IN_A_MILLISECOND;
			
			System.out.println("Time taken for the method: " + jp.getSignature().getName() + " from the class " + 
						jp.getTarget().getClass().getSimpleName() + " took "+ timeInMilliseconds + "ms");
			
			logger.log(Level.INFO,"Time taken for the method: " + jp.getSignature().getName() + " from the class " + 
					jp.getTarget().getClass().getSimpleName() + " took "+ timeInMilliseconds + "ms");
			
		}
	}
}
