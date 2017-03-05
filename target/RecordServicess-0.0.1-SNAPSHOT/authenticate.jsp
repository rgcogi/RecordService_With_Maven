<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>COGI Service Solutions - New Login page</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css/custom.css" rel="stylesheet">

</head>

<body>
	<div class="container">
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>

					<a class="navbar-brand col-sm-offset-6" href="authenticate.jsp">Welcome
						to COGI Service Solution. Please Login</a>
					
				</div>
				<div>
					<ul class="nav navbar-nav pull-right">

						<li><a href="index.jsp">Back to Home</a></li>
					</ul>
				</div>
			</div>
		</nav>

	</div>

	<div class="col-sm-9 col-sm-offset-4 col-md-10 col-md-offset-2 main ">
		<c:url value="/signin.do" var="loginUrl" />
		<form class="form-horizontal" action="${loginUrl}" method="post">
			<div class="form-group">
				<c:if test="${param.error != null}">
					<p class="col-sm-5 col-md-offset-2 main alert alert-danger">
						<strong>Invalid email and/or password </strong>
					</p>
				</c:if>
			</div>

			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">Email</label>
				<div class="col-sm-5">
					<input name="cogiUsername" type="email" value="${param.username}"
						class="form-control" id="inputEmail3" placeholder="Email">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
				<div class="col-sm-5">
					<input name="cogiPassword" type="password" class="form-control"
						id="inputPassword3" placeholder="Password">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-5">
					<div class="checkbox">
						<label> <input type="checkbox"> Remember me
						</label>
					</div>
				</div>
			</div>
			<div class="form-group">
				<!-- 
				<div class="col-sm-offset-2 col-sm-5">
					<button type="submit" class="btn btn-default">Sign in</button>
				</div>
			 -->
				<div class="col-sm-offset-2 col-sm-5">
					<p>
						<button type="submit" class="btn btn-primary">Sign in</button>
						<a href="createAccount.do" class="btn btn-default" role="button">New
							User</a>
					</p>
				</div>
			</div>
		</form>


	</div>
	<!-- /container -->
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<jsp:include page="/footer.jsp" />
	</div>
	<script src="js/ie10-viewport-bug-workaround.js"></script>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
	<script src="js/holder.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="js/ie10-viewport-bug-workaround.js"></script>

</body>
</html>
