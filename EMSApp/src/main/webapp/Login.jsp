<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	*{
   		margin: 0;
    	padding: 0;
	}
	body
	{
		margin:0;
		padding:0;
		height: 75vh;
		background: url(bckg.jpg);
		background-size:cover;
	}
	.box input[type="text"],.box input[type="password"]
	{
		border:0;
		background:none;
		display:block;
		margin:20px auto;
		text-align:center;
		border:3px solid #0367fd;
		padding:14px 10px;
		width:220px;
		outline:none;
		color:black;
		border-radius:24px;
		transition:0.25px;
	}
	.box input[type="text"]:focus,.box input[type="password"]:focus
	{
		width:270px;
		border-color:rgb(255,69,0);
	}
	.box input[type="submit"],.box input[type="reset"]
	{
		border:0;
		background:none;
		display:block;
		margin:10px auto;
		text-align:center;
		border:3px solid rgb(255,69,0);
		padding:7px 20px;
		outline:none;
		color:black;
		border-radius:14px;
		transition:0.25px;
		cursor:pointer;
	}
	.box input[type="submit"]:hover,.box input[type="reset"]:hover
	{
		background-color:rgb(255,69,0);
	}
	.header{
    margin: 0;
    height: 4vh;
    text-decoration: none;
    color:white;
    background-color: rgba(0, 0, 0, 0.575);
	}
	.header h3{
    text-align: center;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
	}
	fieldset
	{ 
		width:30vw;
		background-color:white;
		color:white;
		opacity: .56;
		padding: 0;
		float:right;
	}
	legend
	{
		color:black;
		font-size:34px;
		text-align:center;
	}
	.Login{
    margin: 0px;
    padding: 163px 40px 163px 0;
    text-align: -webkit-right;
    height:43vh;
	}
	.footer{
	margin: 0;
    margin-top: 40px;
    padding: 0;
    height: 3vh;
    text-align: center;
    color: black;
    background: rgba(255, 120, 233, 0.726);
	}
</style>
<title>Admin Login</title>
<script language="javascript">
	function validate()
	{
		var usr=document.myform.usr;
		var pass=document.myform.pwd;
		if(usr.value.length<=0){
			alert("UserName is Required");
			usr.focus();
			return false;
		}
		else if(pass.value.length<=0){
			alert("Password is Required");
			pass.focus();
			return false;
		}
		else{
			return true;
		}
	}
</script>

</head>
<body>
<body>
	<form action="./Login" method="post" name="myform" onsubmit="return validate()">
		<div class="header">
       		<h3><b> Admin Login </b></h3>
		</div>
		
		<div class="Login">
    		<div class="box">
            	<fieldset>
            		<legend>Login</legend>
               			<input type="text" placeholder="Enter Username" id="usr" name="usr">
                		<input type="password" placeholder="Enter Password" id="pwd" name="pwd">
                		<input type="submit" value="Login"/> <input type="reset" value="clear">
                		<center><a href="register.jsp">Register As a Admin</a></center>
                		<center><a href="Reset.jsp">Reset password</a></center>
                		<center><a href="Home.jsp">Home</a></center>
                </fieldset>
        	</div>
    	</div>
		<div class="footer">
        	<h5><b> Copyright 2023-24 &copy All Rights are Reserved </b></h5>
    	</div>	
	</form>
</body>





