<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>COGI Service Solution Home</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/jumbotron.css" rel="stylesheet">
<link href="css/custom.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="../../assets/js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

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
				<a class="navbar-brand" href="#">COGI Service Solution</a>
			</div>

			<c:url value="/cogiLogin" var="loginUrl" />

			<form:form class="navbar-form navbar-right" commandName="student">
				<div>
					<c:if test="${param.error != null}">
						<p>Invalid username and/or password</p>
					</c:if>

				</div>
				<div class="form-group">
					<form:input path="userID" type="text" name="cogiUsername"
						value="${param.username}" placeholder="Email address or UserID"
						required="true" cssClass="form-control" />
				</div>
				<div class="form-group">
					<form:input path="password" type="password" name="cogiPassword"
						placeholder="password" required="true" cssClass="form-control" />
				</div>
				<button type="submit" class="btn btn-success">Sign in</button>
			</form:form>


		</div>
	</nav>

	<!-- Main jumbotron for a primary marketing message or call to action -->
	<div class="container">
		<div class="col-md-10">
			<div id="locations" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-targets="#locations" data-slide-to="0" class="active"></li>
					<li data-targets="#locations" data-slide-to="1"></li>
					<li data-targets="#locations" data-slide-to="2"></li>
					<li data-targets="#locations" data-slide-to="3"></li>
					<li data-targets="#locations" data-slide-to="4"></li>
					<li data-targets="#locations" data-slide-to="5"></li>
					<li data-targets="#locations" data-slide-to="6"></li>
					<li data-targets="#locations" data-slide-to="7"></li>					
					<li data-targets="#locations" data-slide-to="DaveCOGI"></li>
					<li data-targets="#locations" data-slide-to="JoyCOGI"></li>
					<li data-targets="#locations" data-slide-to="Joy_Dave_pix"></li>
					<li data-targets="#locations" data-slide-to="OceanViewJoyDave"></li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img src="images/1.jpg" alt="">
					</div>
					<div class="item">
						<img src="images/2.jpg" alt="">
						<div class="carousel-caption">
							<h3>Sai Wan Beach in Hong Kong</h3>
						</div>
					</div>
					<div class="item">
						<img src="images/3.jpg" alt="">
					</div>
					<div class="item">
						<img src="images/4.jpg" alt="">
						<div class="carousel-caption">
							<h3>London Phone Boot</h3>
						</div>
					</div>
					<div class="item">
						<img src="images/5.jpg" alt="">
					</div>
					<div class="item">
						<img src="images/6.jpg" alt="">
						<div class="carousel-caption">
							<h3>Pont Neuf Bridge in Paris</h3>
						</div>
					</div>
					<div class="item">
						<img src="images/7.jpg" alt="">
					</div>
					<div class="item">
						<img src="images/8.jpg" alt="">
						<div class="carousel-caption">
							<h3>Golden Gate Bridge at dusk</h3>
						</div>
					</div>
					<div class="item">
						<img src="images/DaveCOGI.jpg" alt="">
						<div class="carousel-caption">
							<h3>Joy COGI Bello</h3>
						</div>
					</div>
					<div class="item">
						<img src="images/JoyCOGI.jpg" alt="">
						<div class="carousel-caption">
							<h3>David COGI Bello</h3>
						</div>
					</div>
					<div class="item">
						<img src="images/Joy_Dave_pix.jpg" alt="">
						<div class="carousel-caption">
							<h3>David & Joy COGI Bello</h3>
						</div>
					</div>
					<div class="item">
						<img src="images/OceanViewJoyDave.jpg" alt="">
						<div class="carousel-caption">
							<h3>Dave & Joy COGI Bello</h3>
						</div>
					</div>
				</div>
				<a class=" left carousel-control" href="#locations"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span>
				</a> <a class=" right carousel-control" href="#locations"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>

		</div>
	</div>

	<div class="container">
		<!-- Example row of columns -->
		<div class="row">
			<div class="col-md-3">
				<h2>Education</h2>
				<p>We offer courses that provide you with tools needed to become
					a caring Certified Nurse Assitant.</p>
				<p>
					<a class="btn btn-default" href="#" role="button">View details
						&raquo;</a>
				</p>
			</div>
			<div class="col-md-3">
				<h2>Software Solutioning</h2>
				<p>Business Goals are the raison Detier of Successful and long
					lived software. Our Architects and Developers will work with you to
					achieve your business objective</p>
				<p>
					<a class="btn btn-default" href="#" role="button">View details
						&raquo;</a>
				</p>
			</div>
			<div class="col-md-3">
				<h2>Career Development</h2>
				<p>You are destinied to succeed. Our goal is to work with you to
					make this dream come true</p>
				<p>
					<a class="btn btn-default" href="#" role="button">View details
						&raquo;</a>
				</p>
			</div>
			<div class="col-md-3">
				<h2>Financial Management</h2>
				<p>Managing your finances is key to success. At COGI Solutions
					our expert will work with you to develop a customized finacial
					plan. Our Experts are just a phone call away</p>
				<p>
					<a class="btn btn-default" href="service.jsp" role="button">View
						details &raquo;</a>
				</p>
			</div>
		</div>

		<hr>

		<footer>
			<p>&copy; COGI Service Solution 2015</p>
		</footer>
	</div>
	<!-- /container -->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.min.js"></script>
	<script>
        $('.carousel').carousel({
            interval: 2000,
            wrap: true
        });
    </script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
