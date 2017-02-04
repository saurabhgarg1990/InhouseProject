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
<link rel="stylesheet" href="resoucres/css/font-awesome.min.css">
<script src="resources/js/jquery.min.js"></script>
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
		<div align="center">
			<c:if test="${not empty errorMsg}">
				<div class="alert alert-danger">
					<p>${errorMsg}</p>
				</div>
			</c:if>
			<c:if test="${not empty successMsg}">
				<div class="alert alert-success">
					<p>${successMsg}</p>
				</div>
			</c:if>
		</div>
		<form:form class="form-horizontal" id="form" action="registerUser"
			method="post" commandName="userForm">

			<div class="form-group">
				<label for="empId" class="control-label col-xs-4">Employee
					Id:</label>
				<div class="col-xs-8">
					<input type="number" class="form-control" id="empId" name="empId"
						required>
				</div>
			</div>
			<div class="form-group">
				<label for="name" class="control-label col-xs-4">Name:</label>
				<div class="col-xs-8">
					<input type="text" class="form-control" id="name" name="name"
						required>
				</div>
			</div>

			<div class="form-group">
				<label for="email" class="control-label col-xs-4">Email Id:</label>
				<div class="col-xs-8">
					<input type="email" class="form-control" id="email" name="email"
						required>
				</div>
			</div>
			<div class="form-group">
				<label for="dept" class="control-label col-xs-4">Department:</label>
				<div class="col-xs-8">
					<select id="dept" name="dept">
						<option value="NONE">--- Select ---</option>
						<option value="Technology" selected="selected">Technology</option>
						<option value="Support">Support</option>
						<option value="QA">QA</option>
						<option value="HR">HR</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="role" class="control-label col-xs-4">Designation:</label>
				<div class="col-xs-8">
					<select id="role" name="role">
						<option value="NONE">--- Select ---</option>
						<option value="Mgr" selected="selected">Manager</option>
						<option value="HR">HR</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="pwd" class="control-label col-xs-4">Password:</label>
				<div class="col-xs-8">
					<input type="password" class="form-control" id="pwd" name="pwd"
						required>
				</div>
			</div>
			<div class="form-group">
				<label for="repwd" class="control-label col-xs-4">Confirm
					Password:</label>
				<div class="col-xs-8">
					<input type="password" class="form-control" id="repwd" name="repwd"
						required>
				</div>
			</div>
			<button type="submit" class="btn btn-default">Register</button>
		</form:form>
	</div>

	<footer class="container-fluid">
		<p>© Copyright 2016 OnMobile Global Limited, All Rights Reserved</p>
	</footer>
</body>