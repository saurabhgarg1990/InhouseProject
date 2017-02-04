<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="resources/js/jquery-2.1.4.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="resources/js/bootstrap-filestyle.min.js"></script>
<style>
header {
	background-color: black;
	padding: 15px;
	color: white;
}

footer {
	padding: 15px;
	background: black;
	color: white;
	position: fixed;
	left: 0px;
	bottom: 0px;
	width: 100%;
}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="index.html">Onmo-Hire</a>
			</div>
		</div>
	</nav>


	<div class="container-fluid"
		style="max-width: 600px; padding: 40px 20px; background: #66cccc">

		<form:form class="form-horizontal" id="form" action="loginUser"
			method="post" commandName="loginForm">
			<div class="input-group input-sm">
				<label class="input-group-addon" for="email"><i
					class="fa fa-user"></i></label> <input type="text" class="form-control"
					id="email" name="email" placeholder="Enter EmailId" required>
			</div>
			<div class="input-group input-sm">
				<label class="input-group-addon" for="pwd"><i
					class="fa fa-lock"></i></label> <input type="password" class="form-control"
					id="pwd" name="pwd" placeholder="Enter Password" required>
			</div>
			<div class="form-group">
				<a href="userRegister">Register?</a>
				<div class="col-xs-8">
					<button type="submit" class="btn btn-default">Login</button>
				</div>
			</div>

		</form:form>
	</div>

	<footer class="container-fluid">
		<p>© Copyright 2016 OnMobile Global Limited, All Rights Reserved</p>
	</footer>
</body>