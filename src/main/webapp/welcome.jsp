<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
   <head>
   	<title>View All Subjects</title>
   	 
   	<link href="css/bootstrap.min.css" rel="stylesheet">
   	<link href="css/bootstrap.css" rel="stylesheet">
   	
   	<!-- 
	<link href="css/bootstrap-theme.min.css" rel="stylesheet"> 
	<link href="css/bootstrap-theme.css" rel="stylesheet"> 
	
	
	<link href="css/jquery.layout.css" rel="stylesheet"> 
	<link href="css/bootply.css" rel="stylesheet"> 
	<link href="css/bootstrap-select.min.css" rel="stylesheet"> 
	
	 -->
    <!-- Custom styles for this template -->
    <link href="css/jumbotron.css" rel="stylesheet">
	
	
   </head>

   <body > 
      	<jsp:include page="/myheader.jsp"/>
      	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main"  >
			<div id="greetings">
				<h1> Welcome  ${results.currentUser} !</h1>
			</div>   
			<div class="bs-example" data-example-id="panel-without-body-with-table">
    <div class="panel panel-success">
      <!-- Default panel contents -->
      <div class="panel-heading"> <h4> 2014/2015 Academic Year </h4> </div>
        <div class="panel-body">
            <p>Records show that you are taking the following Subjects:</p>
        </div>
      <!-- Table -->
      <table class="table table-hover table-hover ">
        <thead>
          <tr>
            <th class="col-xs-2">#</th>
            <th class="col-xs-2">Code</th>
            <th class="col-xs-3">Title</th>
            <th class="col-xs-3">Description</th>
            <th class="col-xs-2">Tutor</th>
          
          </tr>
        </thead>
        <tbody>
        <c:forEach var="nextSubject" items="${results.allSubjects}" begin="0"  varStatus="loop">
          <tr>
            <th scope="row"><c:out value= "${loop.index+1}"/> </th>
            <td><c:out value= "${nextSubject.code}"/> </td>
            <td><c:out value= "${nextSubject.title}"/> </td>
            <td><c:out value= "${nextSubject.description}"/> </td>
            <td><c:out value= "${nextSubject.tutor}"/> </td>          
          </tr>
       </c:forEach>
        </tbody>
      </table>
    </div>
  </div>	  
    	</div>
       <script src="js/jquery.min.js"></script>
       <script src="js/bootstrap.min.js"></script>
   <jsp:include page="/footer.jsp"/>  
   </body>
</html>
