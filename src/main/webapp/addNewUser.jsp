<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<html>
<head>
<title>Add New User</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css/jumbotron.css" rel="stylesheet">

</head>

<body>
	<jsp:include page="/myheader.jsp" />
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

		<form:form class="form-horizontal" role="form"
			commandName="newUserFormObject">
			<div id="addNewUser" class="container">
				<div class="form-group">
					<label class="col-sm-7 col-sm-offset-0 control-label">Register New User </label>
				</div>

				<div class="form-group">
					<label for="inputEmail3" class="col-sm-2 control-label">Email</label>
					<div class="col-sm-7">
						<form:input path="username" type="email" class="form-control"
							id="inputEmail3" placeholder="New User Email" />
					</div>					 
					<div class="col-sm-3">
						<h4> <form:errors path="username" type="label" class="label label-warning" /> </h4>
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
					<div class="col-sm-7">
						<form:input path="password" type="password" class="form-control"
							id="inputPassword3" placeholder="New User Password" />
					</div>
					<div class="col-sm-3">
						<h4><form:errors path="password" type="label" class="label label-warning" /></h4>
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-4 col-sm-10">
						<button type="submit" class="btn btn-success">Add New
							User</button>
						<button type="reset" class="btn btn-warning">Reset</button>

					</div>
				</div>
			</div>
		</form:form>


	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

</body>
</html>
