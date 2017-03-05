<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<html>
   <head>
   	<title>Register New Student</title>
    
   	<link href="css/bootstrap.min.css" rel="stylesheet">
	 
    <!-- Custom styles for this template -->
    <link href="css/jumbotron.css" rel="stylesheet">
	 
	
   </head>

   <body>
      <jsp:include page="/myheader.jsp"/>
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
      <div id="addStudent" class="container">
         <form:form role="form" commandName="student" cssClass="form-group"> 
         	
         		<div class="form-group col-sm-7">
             		<label for="userID" class="control-label" ><fmt:message key="student.userID"/></label>
             	
             		<form:input id="userID" path="userID" cssClass="form-control"/>   
		    						<form:errors path="userID" cssClass="error"/> 
		    	</div>
		    	<div class="form-group col-sm-7">
             		<label for="password" class="control-label" ><fmt:message key="student.password"/></label>
             	
             		<form:input id="password" path="password" cssClass="form-control"/>   
		    						<form:errors path="password" cssClass="error"/> 
		    	</div>
		    	<div class="form-group col-sm-7">
	   	    		<label><fmt:message key="student.firstName"/></label><form:input path="firstName" cssClass="form-control"/>
	                 <form:errors path="firstName" cssClass="error"/>
	            </div>
	   	    	                     
	   	    	<div class="form-group col-sm-7">                   
	   	    	                     
		    		<label><fmt:message key="student.lastName"/></label><form:input path="lastName" cssClass="form-control"/>	 
		    		<form:errors path="lastName" cssClass="error"/>        	
		    						 
		    	</div>
		    	<div class="form-group col-sm-7">
		    		<label><fmt:message key="student.gender"/></label><form:input path="gender" cssClass="form-control"/>	
		    		<form:errors path="gender" cssClass="error"/>         	
		  		</div>	
		  		<div class="form-group col-sm-7"> <button type="submit" class="btn btn-success">Register Student</button>	</div>		    		   		
	 		</form:form>	
	 		   	  
      </div>
      </div>
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <jsp:include page="/footer.jsp"/>  
   </body>
</html>
