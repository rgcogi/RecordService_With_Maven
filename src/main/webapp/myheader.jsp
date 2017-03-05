<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<c:set var="todaysDate" value="<%=new java.util.Date()%>" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>COGI Service Solution</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/dashboard.css" rel="stylesheet">
<link href="css/sticky-footer-navbar.css" rel="stylesheet">

<script src="../../assets/js/ie-emulation-modes-warning.js"></script>

</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Project Record</a>
			</div>

			<sec:authorize access="isAuthenticated()">

				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#">View Scores</a></li>
						<li><a href="addStudent.do">Register Student</a></li>
						<li><a href="addSubject.do">Register Subject</a></li>
						<li><a href="#">Profile</a></li>
						<li><a href="#">Help</a></li>
					</ul>
					<form class="navbar-form navbar-right">
						<input type="text" class="form-control"
							placeholder="Loose Search...">
					</form>
				</div>
			</sec:authorize>

		</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar">
					<li class="active"><a href="welcome.do">Overview <span
							class="sr-only">(current)</span></a></li>
					<li><a href="index.jsp">Back to Home</a></li>

					<sec:authorize access="isAnonymous()">
						<li><a href="createAccount.do">Create New User</a></li>
						<li><a href="#">View Profile</a></li>
					</sec:authorize>

				</ul>
				<sec:authorize access="isAuthenticated()">
					<ul class="nav nav-sidebar">
						<sec:authorize access="hasRole('ROLE_ADMIN')">
							<li><a href="addSubject.do">New Subject</a></li>
						</sec:authorize>
						<li><a href="welcome.do">View All Subjects</a></li>
						<li><a href="#">Search for Subject</a></li>
					</ul>
					<ul class="nav nav-sidebar">
						<sec:authorize access="hasRole('ROLE_ADMIN')">
							<li><a href="addStudent.do">New Student</a></li>
						</sec:authorize>
						<li><a href="#">view All Students</a></li>
						<li><a href="search.do">Search for Student</a></li>
						<!-- <li><a href="signin.do">LogOff</a></li> -->
						<li><a href='<c:url value="logout"/>'>LogOut</a></li>

					</ul>
				</sec:authorize>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
	<script src="../../assets/js/vendor/holder.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
