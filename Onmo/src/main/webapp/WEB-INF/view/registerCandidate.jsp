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
   padding:15px;
   background:black;
   color:white;
   position:fixed;
   left:0px;
   bottom:0px;
   width:100%;
}

.form-group .control-label:after {
  content:"*";
  color:red;
}

</style>

</head>
<body onload="addModeDetail()">

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
		<form:form class="form-horizontal" id="form"
			action="candidateAdd" method="post" commandName="candForm"
			enctype="multipart/form-data">

			<div class="form-group">
				<label for="name" class="control-label col-xs-4">Name:</label>
				<div class="col-xs-8">
					<input type="text" class="form-control" id="name" name="name"
						required>
				</div>
			</div>
			<div class="form-group">
				<label for="mobile" class="control-label col-xs-4">Mobile
					No:</label>
				<div class="col-xs-8">
                                  <input type="number" class="form-control" id="mobile" name="mobile"
                                  onkeypress="mobileValidation()"  required>
                                  <label id="mobilevalid" style="color: red;display:none">Please Enter valid number</label>

				</div>
			</div>
			<div class="form-group">
				<label for="email" class="control-label col-xs-4">Email Id:</label>
				<div class="col-xs-8">
					<input type="email" class="form-control" id="email" name="email" required>
				</div>
			</div>
			<div class="form-group">
				<label for="identity" class="control-label col-xs-4">AadharCard
					No:</label>
				<div class="col-xs-8">
					<input type="text" class="form-control" id="identity"
						name="identity" required>
				</div>
			</div>
			<div class="form-group">
				<label for="exp" class="control-label col-xs-4">Experience
					(in months):</label>
				<div class="col-xs-8">
					<input type="number" class="form-control" id="exp" name="exp" required>
				</div>
			</div>
			<div class="form-group" id="modeOfHire">
				<label for="mode" class="control-label col-xs-4">Mode Of
					Hire:</label>
				<div class="col-xs-8">
					<label class="radio-inline"> <input type="radio"
						onclick="addModeDetail()" value="Referral" name="mode" id="ref"
						checked>Referral
					</label> <label class="radio-inline"> <input type="radio"
						onclick="addModeDetail()" value="Vendor" name="mode" id="ven">Vendor
					</label> <label class="radio-inline"> <input type="radio"
						value="Direct" id="direct" onclick="addModeDetail()" name="mode">Direct
					</label> <label class="radio-inline"> <input type="radio"
						onclick="addModeDetail()" id="portal" value="JobPortal"
						name="mode">JobPortal
					</label>
				</div>
			</div>
			<div style="display: none" id="ifReferral">
				<div class="form-group">
					<label for="refName" class="control-label col-xs-4">Employee
						Name:</label>
					<div class="col-xs-8">
						<input type="text" class="form-control" id="refName"
							name="modeName" required>
					</div>
				</div>
				<div class="form-group">
					<label for="refId" class="control-label col-xs-4">Employee
						Id:</label>
					<div class="col-xs-8">
						<input type="number" class="form-control" id="refId" name="modeId" required>
					</div>
				</div>
			</div>
			<div style="display: none" id="ifVendor">
				<div class="form-group">
					<label for="refName" class="control-label col-xs-4">Vendor
						Name:</label>
					<div class="col-xs-8">
						<input type="text" class="form-control" id="venName"
							name="modeName" required>
					</div>
				</div>
				<div class="form-group">
					<label for="refId" class="control-label col-xs-4">Vendor
						Id:</label>
					<div class="col-xs-8">
						<input type="number" class="form-control" id="venId" name="modeId"
							required>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="file" class="control-label col-xs-4">Upload CV:</label>
				<div class="col-xs-8">

					<!-- File input -->
					<input name="file" id="file" type="file" class="filestyle" data-icon="false" onchange="" required /><br />

					<div id="result"></div>
				</div>
			</div>
			<button type="submit" class="btn btn-default" onclick="submitForm()">Submit</button>
		</form:form>
	</div>

	<footer class="container-fluid">
		<p>© Copyright 2016 OnMobile Global Limited, All Rights Reserved</p>
	</footer>
</body>
<script type="text/javascript">
	function addModeDetail() {
		if (document.getElementById("ref").checked) {
			document.getElementById("ifReferral").style.display = 'block';
			document.getElementById("ifVendor").style.display = 'none';
			
		} else if (document.getElementById("ven").checked) {
			document.getElementById("ifReferral").style.display = 'none';
			document.getElementById("ifVendor").style.display = 'block';
		
		} else if (document.getElementById("direct").checked) {
			document.getElementById("ifReferral").style.display = 'none';
			document.getElementById("ifVendor").style.display = 'none';
			
		} else if (document.getElementById("portal").checked) {
			document.getElementById("ifReferral").style.display = 'none';
			document.getElementById("ifVendor").style.display = 'none';
			
		}

	}
	
	function submitForm() {
		
		$("#form").submit()
		{
			confirm("Are you sure you want to submit the job application with the entered details?");

		};}
		
	
       function mobileValidation() {
        
        var mobile= document.getElementById("mobile").value;
        document.getElementById("mobilevalid").style.display='block'
        if(mobile.length==10){
          document.getElementById("mobilevalid").style.display='none';
         }
       }

</script>
</html>