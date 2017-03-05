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
			<div id="greetings">
				<h1> Thanks. Student  ${newstudent.firstName}  ${newstudent.lastName} was registered successfully.</h1>
			</div>   	  
    	</div>
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
       <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
   <jsp:include page="/footer.jsp"/>  
   </body>
</html>
