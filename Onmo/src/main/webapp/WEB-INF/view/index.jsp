<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>
<head>
<title>OnHire</title>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="resources/js/jquery-2.1.4.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="resources/js/bootstrap-filestyle.min.js"></script>
<style>
.fa {
	transform: scale(1.5, 2.0);
}

.onHire_sm_btn {
	background: #3399ff;
	color: #fff;
	font-family: Sans-serif;
	font-size: 20px;
	height: 45px;
	width: 120px;
	line-height: 45px;
	margin: 20px 20px 20px 20px;
	text-align: center;
	border: 0;
	transition: all 0.3s ease 0s;
}

.onHire_md_btn {
	background: #3399ff;
	color: #fff;
	font-family: Sans-serif;
	font-size: 20px;
	height: 50px;
	width: 180px;
	line-height: 50px;
	margin: 20px 20px 20px 20px;
	text-align: center;
	border: 0;
	transition: all 0.3s ease 0s;
}

.onHire_lg_btn {
	background: #ff4000;
	color: #fff;
	font-family: Sans-serif;
	font-size: 20px;
	height: 65px;
	width: 230px;
	line-height: 65px;
	margin: 20px 20px 20px 20px;
	text-align: center;
	border: 0;
	transition: all 0.3s ease 0s;
}
</style>

</head>


<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="">Onmo-Hire</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">

				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><i class="fa fa-shield" aria-hidden="true"></i>&nbsp;About</a></li>
					<li><a href="#"><i class="fa fa-comment"></i>&nbsp;Contact</a></li>
					<li><a href="userLogin"><i
							class="fa fa-sign-in"></i>&nbsp;Login</a></li>
				</ul>
			</div>
			
	</nav>

<!-- 	<!-- Model for Login --> -->

<!-- 	<div class="modal fade" id="login" role="dialog"> -->
<!-- 		<div class="modal-dialog"> -->

<!-- 			<!-- Modal content--> -->
<!-- 			<div class="modal-content"> -->
<!-- 				<div class="modal-header"> -->
<!-- 					<button type="button" class="close" data-dismiss="modal">&times;</button> -->
<!-- 					<h4 class="modal-title">Login</h4> -->
<!-- 				</div> -->
<!-- 				<div class="modal-body"> -->
<%-- 					<form:form class="form-horizontal" id="loginForm" action="loginUser" --%>
<%-- 						method="post" commandName="loginForm"> --%>
<!-- 						<div class="form-group"> -->
<!-- 							<label class="control-label col-sm-2" for="email">Email:</label> -->
<!-- 							<div class="col-sm-10"> -->
<!-- 								<input type="email" class="form-control" id="email" name="email" -->
<!-- 									placeholder="Enter email"> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="form-group"> -->
<!-- 							<label class="control-label col-sm-2" for="pwd">Password:</label> -->
<!-- 							<div class="col-sm-10"> -->
<!-- 								<input type="password" class="form-control" name="pwd" id="pwd" -->
<!-- 									placeholder="Enter password"> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="form-group"> -->
<!-- 							<div class="col-sm-offset-2 col-sm-10"> -->
<!-- 								<button type="button" class="btn btn-primary" -->
<!-- 									data-dismiss="modal">Login for Onmo-Hire</button> -->
<!-- 								<p style="float: right;"> -->
<!-- 									Not a member? <a href="#" data-toggle="modal" -->
<!-- 										data-target="#singup" onclick="hideModel()">Sign Up</a> -->
<!-- 								</p> -->
<!-- 							</div> -->
<!-- 						</div> -->
<%-- 					</form:form> --%>
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- 	<div> -->

<!-- 		<!--  Model for signup Page --> -->

<!-- 		<div class="modal fade" id="singup" role="dialog"> -->
<!-- 			<div class="modal-dialog"> -->
<!-- 				<div class="modal-content"> -->
<!-- 					<div class="modal-header"> -->
<!-- 						<button type="button" class="close" data-dismiss="modal">&times;</button> -->
<!-- 						<h4 class="modal-title">Sign Up</h4> -->
<!-- 					</div> -->
<!-- 					<div class="modal-body"> -->
<%-- 						<form:form class="form-horizontal" id="signupForm" action="registerUser" --%>
<%-- 							method="post" commandName="userForm"> --%>

<!-- 							<div> -->
<%-- 								<c:if test="${not empty errorMsg}"> --%>
<!-- <!-- 									<div class="alert alert-danger"> --> -->
<%-- 										<p>${errorMsg}</p> --%>
									
<%-- 								</c:if> --%>
<%-- 								<c:if test="${not empty successMsg}"> --%>
<!-- <!-- 									<div class="alert alert-success"> --> -->
<%-- 										<p>${successMsg}</p> --%>
									
<%-- 								</c:if> --%>
<!-- 							</div> -->
<!-- 							<div class="form-group"> -->
<!-- 								<label for="empId" class="control-label col-xs-4">Employee -->
<!-- 									Id:</label> -->
<!-- 								<div class="col-xs-8"> -->
<!-- 									<input type="number" class="form-control" id="empId" -->
<!-- 										name="empId" required> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="form-group"> -->
<!-- 								<label for="name" class="control-label col-xs-4">Name:</label> -->
<!-- 								<div class="col-xs-8"> -->
<!-- 									<input type="text" class="form-control" id="name" name="name" -->
<!-- 										required> -->
<!-- 								</div> -->
<!-- 							</div> -->

<!-- 							<div class="form-group"> -->
<!-- 								<label for="email" class="control-label col-xs-4">Email -->
<!-- 									Id:</label> -->
<!-- 								<div class="col-xs-8"> -->
<!-- 									<input type="email" class="form-control" id="email" -->
<!-- 										name="email" required> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="form-group"> -->
<!-- 								<label for="dept" class="control-label col-xs-4">Department:</label> -->
<!-- 								<div class="col-xs-8"> -->
<!-- 									<select id="dept" name="dept"> -->
<!-- 										<option value="NONE">--- Select ---</option> -->
<!-- 										<option value="Technology" selected="selected">Technology</option> -->
<!-- 										<option value="Support">Support</option> -->
<!-- 										<option value="QA">QA</option> -->
<!-- 										<option value="HR">HR</option> -->
<!-- 									</select> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="form-group"> -->
<!-- 								<label for="role" class="control-label col-xs-4">Designation:</label> -->
<!-- 								<div class="col-xs-8"> -->
<!-- 									<select id="role" name="role"> -->
<!-- 										<option value="NONE">--- Select ---</option> -->
<!-- 										<option value="Mgr" selected="selected">Manager</option> -->
<!-- 										<option value="HR">HR</option> -->
<!-- 									</select> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="form-group"> -->
<!-- 								<label for="pwd" class="control-label col-xs-4">Password:</label> -->
<!-- 								<div class="col-xs-8"> -->
<!-- 									<input type="password" class="form-control" id="pwd" name="pwd" -->
<!-- 										required> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="form-group"> -->
<!-- 								<label for="repwd" class="control-label col-xs-4">Confirm -->
<!-- 									Password:</label> -->
<!-- 								<div class="col-xs-8"> -->
<!-- 									<input type="password" class="form-control" id="repwd" -->
<!-- 										name="repwd" required> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<button type="submit" class="btn btn-default">Register</button> -->
<%-- 						</form:form> --%>
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->




	<div class="jumbotron">
		<div class="container">
			<h1>OnHire</h1>
			<p>Our greatest strength lies in our People! We are passionate
				about everything that we do! Most importantly the right attitude
				towards work and play. At OnMobile you will have the opportunity to
				be part of a diverse environment. With a talented workforce spanning
				varied geographies our culture is unique the pace challenging and
				opportunities unlimited! Be a part of a team that is
				fun-loving,celebrates diversity, works hard and consistently strives
				for excellence. Join us live your dreams!</p>
			<p>
				<!--                              <button class="onHire_md_btn" data-toggle="modal" -->
				<!--                                     data-target="#myModal">Register with us &raquo;</button> -->
			<form action="registerCandidate" method="get">
				<button type="submit" class="onHire_md_btn">Apply &raquo;</button>
			</form>
			
			
		</div>
	
	<%--               <form action="userLogin" method="get"> --%>
	<%--                                          <button type="submit" class="onHire_md_btn">View Application &raquo;</button></form> --%>

	<!--         <div class="modal fade" id="myModal" role="dialog"> -->
	<!--                <div class="modal-dialog"> -->

	<!--                       Modal content -->
	<!--                       <div class="modal-content"> -->
	<!--                              <div class="modal-header" -->
	<!--                                     style="text-align: center; background-color: #545950;"> -->
	<!--                                     <button type="button" class="close" data-dismiss="modal">&times;</button> -->
	<!--                                     <h4 cla s="modal-title" style="color: white;">Tell us about -->
	<!--                                            yourself</h4> -->
	<!--                              </div> -->

	<!--                              <div style="text-align: center;"> -->
	<!--                                     <div style="padding: 45px;"> -->
	<!--                                            <i class="fa fa-graduation-cap fa-5x" aria-hidden="true" -->
	<!--                                                   style="padding-right: 130px;"></i> <i -->
	<!--                                                   class="fa fa-briefcase fa-5x" aria-hidden="true"></i> -->
	<!--                                     </div> -->
	<!--                                     <div> -->

	<%--                                     <form action="registerCandidate" method="get"> --%>
	<!--                                            <button type="submit" class="onHire_lg_btn" >Fresher</button> -->
	<%--                                            </form> --%>
	<%-- <%--                                       <form action="registerExperience" method="get"> --%>
	<!-- <!--                                <button  type="submit" class="onHire_lg_btn">Experience</button> -->
	<%-- <%--                                       </form> --%>
	-
	<!--                                     </div> -->
	<!--                              </div> -->

	<!--                       </div> -->

	<!--                </div> -->
	<!--         </div> -->
	</div>
</body>
<script>
	/* Model javaScript */

	function hideModel() {
		$('#login').modal('hide');
	}

</script>
</html>
s
