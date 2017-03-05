<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>

<head>
	<title>Welcome to COGI Service Solutions</title>
	<link href="styles.css" rel="Stylesheet" type="text/css"/>
</head>
  
<body>

	<jsp:include page="/header.jsp"/>
	
	<div id="greetings">
		<h1> Welcome  ${results.Student.firstName}  ${results.Student.lastName}</h1>
	</div>
	<div id="subjects">
		<ul>
			<c:forEach items="${results.allSubjects}" var="nextSubject">
			
			<li>
				<h2>${nextSubject.title}</h2>
				<p>
					<span> by  ${nextSubject.tutor}  
					      					
				</span>
				</p>
				
			</li>
			
			</c:forEach>
		
		</ul>
	</div>
		
	<jsp:include page="/footer.jsp"/>
	
</body>

</html>