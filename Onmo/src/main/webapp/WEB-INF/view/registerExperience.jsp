<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
header {
	background-color: black;
	padding: 15px;
	color: white;
}

footer {
	background-color: #555;
	color: white;
	padding: 15px;
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
 		style="max-width: 600px; padding: 40px 20px; background: #66cccc" > 
				<form class="form-horizontal" id="form" action="candidateAdd/exp" method="post">

					<div class="form-group">
						<label for="name" class="control-label col-xs-4">Name:</label>
						<div class="col-xs-8">
							<input type="text" class="form-control" id="name" name="name" required="">
						</div>
					</div>
					<div class="form-group">
						<label for="mobile" class="control-label col-xs-4">Mobile
							No:</label>
						<div class="col-xs-8">
							<input type="number" class="form-control" id="mobile" name="mobile" required="">
						</div>
					</div>
					<div class="form-group">
						<label for="pan" class="control-label col-xs-4">PAN Card No:</label>
						<div class="col-xs-8">
							<input type="text" class="form-control" id="pan"  name="pan">
						</div>
					</div>
					<div class="form-group">
						<label for="email" class="control-label col-xs-4">Email
							Id:</label>
						<div class="col-xs-8">
							<input type="email" class="form-control" id="email" name="email">
						</div>
					</div>
					<div class="form-group" id="modeOfHire">
						<label for="mode" class="control-label col-xs-4">Mode Of
							Hire:</label>
						<div class="col-xs-8">
							<label class="radio-inline"> <input type="radio"
								 onclick="addModeDetail()"  value="Referral" name="mode" id="ref" checked>Referral
							</label> <label class="radio-inline"> <input type="radio"
								 onclick="addModeDetail()" value="Vendor" name="mode" id="ven">Vendor
							</label> <label class="radio-inline"> <input type="radio" value="Direct" id="direct" onclick="addModeDetail()" name="mode"
								>Direct
							</label> <label class="radio-inline"> <input type="radio" onclick="addModeDetail()" id="portal"
							value="JobPortal" name="mode">JobPortal
							</label>
						</div>
					</div>
					<div style="display:none" id="ifReferral">
					<div class="form-group" >
						<label for="refName" class="control-label col-xs-4">Referral
							Name:</label>
						<div class="col-xs-8">
							<input type="text" class="form-control" id="refName" name="modeName">
						</div>
					</div>
					<div class="form-group" >
						<label for="refId" class="control-label col-xs-4">Employee
							Id:</label>
						<div class="col-xs-8">
							<input type="number" class="form-control" id="refId" name="modeId">
						</div>
					</div>
					</div>
					<div style="display:none" id="ifVendor">
					<div class="form-group">
						<label for="refName" class="control-label col-xs-4">Vendor
							Name:</label>
						<div class="col-xs-8">
							<input type="text" class="form-control" id="venName" name="modeName">
						</div>
					</div>
						<div class="form-group" >
						<label for="refId" class="control-label col-xs-4">Vendor
							Id:</label>
						<div class="col-xs-8">
							<input type="number" class="form-control" id="venId" name="modeId">
						</div>
					</div>
					</div>
					<div style="display:none" id="ifJobPortal">
					<div class="form-group">
						<label for="refName" class="control-label col-xs-4">JobPortal
							Name:</label>
						<div class="col-xs-8">
							<input type="text" class="form-control" id="jbName" name="modeName">
						</div>
					</div>
						<div class="form-group" >
						<label for="refId" class="control-label col-xs-4">JobPortal
							Id:</label>
						<div class="col-xs-8">
							<input type="number" class="form-control" id="jbId" name="modeId">
						</div>
					</div>
					</div>
					<div class="form-group">
						<label for="file" class="control-label col-xs-4">Upload
							CV:</label>
						<div class="col-xs-8">
							<input type="file" id="myFile" name="file">
						</div>
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
		</div>
			<footer class="container-fluid">
		<p>© Copyright 2016 OnMobile Global Limited, All Rights Reserved</p>
	</footer>
</body>

<script type="text/javascript">


	function addModeDetail() {
		if(document.getElementById("ref").checked)
			{
			document.getElementById("ifReferral").style.display='block';
			document.getElementById("ifVendor").style.display='none';
			document.getElementById("ifJobPortal").style.display='none';
			}
		else if(document.getElementById("ven").checked)
			{
			document.getElementById("ifReferral").style.display='none';
			document.getElementById("ifVendor").style.display='block';
			document.getElementById("ifJobPortal").style.display='none';
			}
		else if(document.getElementById("direct").checked)
			{
			document.getElementById("ifReferral").style.display='none';
			document.getElementById("ifVendor").style.display='none';
			document.getElementById("ifJobPortal").style.display='none';
			}
		else if(document.getElementById("portal").checked)
			{
			document.getElementById("ifReferral").style.display='none';
			document.getElementById("ifVendor").style.display='none';
			document.getElementById("ifJobPortal").style.display='block';
			}
		
	}
		
</script>

</html>