<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<html>
   <head>
   	<title>Register New Subject</title>
    
   	<link href="css/bootstrap.min.css" rel="stylesheet">
	 
    <!-- Custom styles for this template -->
    <link href="css/jumbotron.css" rel="stylesheet">
   </head>

   <body>
      <jsp:include page="/myheader.jsp"/>
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
      <div id="addSubject" class="container">
         <form:form role="form" commandName="subject" cssClass="form-group"> 
         	
         		<div class="form-group col-sm-7">
             		<label for="title" class="control-label" ><fmt:message key="subject.title"/></label>
             	
             		<form:input id="title" path="title" cssClass="form-control"/>   
		    						<form:errors path="title" cssClass="error"/> 
		    	</div>
		    	<div class="form-group col-sm-7">
             		<label for="code" class="control-label" ><fmt:message key="subject.code"/></label>
             	
             		<form:input id="code" path="code" cssClass="form-control"/>   
		    						<form:errors path="code" cssClass="error"/> 
		    	</div>
		    	<div class="form-group col-sm-7">
	   	    		<label><fmt:message key="subject.description"/></label><form:input path="description" cssClass="form-control"/>
	                 <form:errors path="description" cssClass="error"/>
	            </div>
	   	    	                     
	   	    	<div class="form-group col-sm-7">                   
	   	    	                     
		    		<label><fmt:message key="subject.tutor"/></label><form:input path="tutor" cssClass="form-control"/>	 
		    		<form:errors path="tutor" cssClass="error"/>        	
		    						 
		    	</div>
		    	 
		  		<div class="form-group col-sm-7"> <button type="submit" class="btn btn-success">RegisterNewSubject</button>	</div>		    		   		
	 		</form:form>	
	 		   	  
      </div>
      </div>
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <jsp:include page="/footer.jsp"/>  
   </body>
</html>
