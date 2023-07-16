<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Tab</title>
	<link rel="stylesheet" href="Button.css">
<style>
	*{
		padding:0px;
	}
	body{
		background: url(Image.jpg);
		background-size: cover;
	}
	table{
		background-color: #7b8282;
		border-style: outset;
		border-radius: 2px;
		padding: 5px;
		width:50vw;
		height:50vh;
	}
	td{
		background-color: lavender;
		color: crimson;
		text-align:left;
	}
	h1{
	background-color:black;
	color:white;
	}
</style>
</head>
<body>
	<h2 align="right" style="color:RED; font-size:16px;"><b><a href="Login.jsp">Log Out</a></b></h2>
	<h1 align="center" margin="0px"><b> Welcome to Employee database Management System </b></h1><br>
	<table align="center">
		<tr>
			<td><center> To Insert Employee Details :</center></td>
			<td><center><button class="button-62" type=submit onclick="window.location.href='Insert.jsp'">Insert</button></center></td>
		</tr>
		<tr>
			<td><center> To Delete Employee Details :</center></td>
			<td><center><button class="button-62" type=submit onclick="window.location.href='Delete.jsp'">Delete</button></center></td>
		</tr>
		<tr>
			<td><center> To Update Employee Details :</center></td>
			<td><center><button class="button-62" type=submit onclick="window.location.href='Update.jsp'">Update</button></center></td>
		</tr>
		<tr>
			<td><center> To Search Employee for Details :</center></td>
			<td><center><button class="button-62" type=submit onclick="window.location.href='Select.jsp'">Search</button></center></td>
		</tr>
	</table>
</body>
</html>