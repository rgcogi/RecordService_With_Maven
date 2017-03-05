<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="todaysDate" value="<%= new java.util.Date() %>"/>

<h1>COGI <span>Service Solution</span> <small>Solution provider since 2002</small></h1>

<div id="links">
	<ul>
		<li><a href='viewAllSubjects.do'>All Subjects</a></li>
		<li><a href='<c:url value="scoreCart.do"/>'>Your Score</a></li>
		<li><a href='findBySubject.jsp'>Find By Student</a></li>
		<!-- <li><a href='add-new-book.jsp'>Add a New Book</a></li> -->
		<li><a href='addNewStudent.do'>Add a Student</a></li>
		<li><a href='service.jsp'>Our Services</a></li>
	</ul>
</div>