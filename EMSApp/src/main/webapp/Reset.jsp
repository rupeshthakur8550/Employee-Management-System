<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Password Reset</title>
<style>
* {
	margin: 0 auto;
	padding: 0;
}

button {
    padding: 19px 39px 18px 39px;
    color: #FFF;
    font-size: 18px;
    text-align: center;
    font-style: normal;
    border-radius: 5px;
    width: 25%;
    border: 1px solid #000000;
    border-width: 1px 1px 3px;
    box-shadow: 0 -1px 0 rgba(255,255,255,0.1) inset;
    margin-bottom: 10px;
  }

  .b1 {background-color: #008CBA;} /* Blue */

  .b2 {background-color: #50d638;} /* Blue */
  
  .box input[type="text"],.box input[type="password"]
	{
    	border:0;
		background:none;
		display:block;
		margin: 11px auto;
		padding: 10px 0px;
		width: 40vw;
		outline:none;
		color:black;
		margin-bottom: 0px;
		background-color: #8a2be29c;
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
	width: 40vw;
	height: 60vh;
	margin: 0 auto;
	background-color: #e6a178;
	color: black;
	opacity: .56;
	padding: 0 1px;
}

.Register {
	margin: 0px;
	padding: 20vh;
	text-align: -webkit-right;
	height: 52vh;
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
<script language="javascript">
	function validate()
	{
		var id=document.myform.usr;
		var pass1=document.myform.pass1;
		var pass2=document.myform.pass2;
		
		if(id.value.length<=0){
			alert("UserName is Required");
			id.focus();
			return false;
		}
		else if(pass1.value.length<=0){
			alert("New Password is Blank");
			pass1.focus();
			return false;
		}
		else if(pass2.value.length<=0){
			alert("Confirm Password is Blank");
			pass2.focus();
			return false;
		}
		else if(pass1.value==pass2.value){
			return true;
		}
		else{
			alert("Please Enter Same Password on Both Fileds..");
			return false;;
		}
	}
</script>
</head>
<body>
	<div class="Register">
		<div class="box">
			<form action="./DelandUpdate" method="post" name="myform" onsubmit="return validate()">
			<fieldset>
				<legend>Admin Password Reset</legend>
					<br>
					<br> 
					<label for="usr">UserName:</label><input type="text" id="usr" name="usr" />
					<label for="Password1">New Password:</label><input type="password" id="pass1" name="pass1"/>
					<label for="password2">Confirm Password:</label><input type="password" id="pass2" name="pass2" />
					<br><br>
					<center>
						<button type="submit" class="b1">Reset</button>
						&emsp;&emsp;
						<button type="reset" class="b2">Clear</button>
					</center>
					<br>
					<center>
						<a href="Login.jsp">Return to Admin Login</a>
					</center>
			</fieldset>
			</form>
		</div>
	</div>
	<div class="footer">
        <h5><b> Copyright 2022-23 &copy All Rights are Reserved </b></h5>
    </div>
</body>
</html>
