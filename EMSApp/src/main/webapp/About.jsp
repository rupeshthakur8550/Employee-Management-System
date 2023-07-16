<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update Employee Information</title>
<style>
* {
	margin: 0 auto;
	padding: 0;
}

body {
	margin: 0;
	padding: 0;
	height: 75vh;
	background: url(bckg.jpg);
	background-size: cover;
	background-attachment: fixed;
}

fieldset {
	width: 70vw;
	height: 50vh;
	margin: 0 auto;
	background-color: #e6a178;
	color: black;
	opacity: .56;
	padding: 0;
	padding-left: 12px;
}

.Register {
	margin: 0px;
	padding: 30vh;
	text-align: -webkit-right;
	height: 31.7vh;
}

legend {
	color: red;
	font-size: 34px;
	text-align: center;
}
.footer
	{
	margin-top: 40px;
    height: 3vh;
    text-align: center;
    color: rgb(207, 198, 198);
    background: rgba(12, 4, 21, 0.726);
	}
</style>
</head>
<body>
	<div class="Register">
		<div class="box">
			<fieldset>
				<legend>Employee Management System Web Application Module</legend>
				<br><br>
				<h3>&nbsp;A simple Introduction and Purpose of this Project</h3>
				<br>
				<p>&emsp;&emsp;&emsp;Employee Management System is need of
					Organization to maintain the Official and Personal data of
					Employee. The System is actually based on Web Application Module as
					an Interface, It is easy to use. It is created to record the
					details of the employees. This reduces the dependency on the manual
					system which could create errors. This is Helpful for Getting
					Employee information Immediately when needed, there are two model
					view of this System they are as follows,</p>
				<br>
				<h4>&nbsp;1. Administrator Module Page</h4>
				<h4>&nbsp;2. Employee Module Page</h4>
				<br>
				<p>&emsp;&emsp;&emsp;There is an Administrator Module which can
					Insert New Employee record, Delete Existing Employee record, Update
					Existing Employee record and View Details of Existing Employee by
					retrieving from Database used to store data, administrator Controls
					over any activity regarding Employee to an Organization.</p>
				<p>&emsp;&emsp;&emsp;The Second module is Obviously about
					Employee, employee can look out at the details which are shared to
					the organization at the time of  Onboarding. Employee can actually
					make changes in it by using Update option provided to him/her.</p>
					<br>
				<center>
					<a href="Home.jsp">Return to Home</a>
				</center>
			</fieldset>
		</div>
	</div>
	<div class="footer">
        <h5><b> Copyright 2022-23 &copy All Rights are Reserved </b></h5>
    </div>
</body>
</html>
