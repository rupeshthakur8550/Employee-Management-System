<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Registration</title>  
		<link rel="stylesheet" href="Format2.css">
		<script language="javascript">
			function validate()
				{
					var id=document.myform.id;
					var name=document.myform.name;
					var address=document.myform.address;
					var fname=document.myform.fname;
					var email=document.myform.email;
					var pno=document.myform.pno;
					var gender1=document.myform.male;
					var gender2=document.myform.female;
					
					if(name.value.length<=0){
						alert("Name is Blank");
						name.focus();
						return false;
					}
					else if(id.value.length<=0){
						alert("EMployee ID is Blank");
						id.focus();
						return false;
					}
					else if(address.value.length<=0){
						alert("Address is Blank");
						address.focus();
						return false;
					}
					else if(gender1.checked==false && gender2.checked==false)
					{
						alert("Gender is not selected");
						return false;
					}
					else if(fname.value.length<=0){
						alert("Father Name is Blank");
						fname.focus();
						return false;
					}
					else if(email.value.length<=0){
						alert("Email is Blank");
						email.focus();
						return false;
					}
					else if(pno.value.length<=0){
						alert("Phone Number is Blank");
						pno.focus();
						return false;
					}
					else
					{		
						return true;
					}
				}
		</script>
    </head>
    <body>
    	<div class="Register">
    		<div class="box">
    		<form action="./Registration" method="post" name="myform" onsubmit="return validate()">   
            	<fieldset>
            		<legend>Register as a Admin</legend>
            		<br><br>
          			<label for="name">Name:</label><input type="text" id="name" name="name"/><br>
        			<label for="id">Employee ID:</label><input type="text" id="id" name="id"/><br>
        			<label for="desig">Designation:</label><input type="text" name="desig" id="desig" placeholder="Manager Or HR Only"/><br>
          			<label for="email">Email:</label><input type="email" id="email" name="email"/><br>
        			<label for="usr">UserName:</label><input type="text" id="usr" name="usr"/><br>
        			<label for="pwd">Password:</label><input type="password" id="pwd" name="pwd"/><br>
        		<center><button type="submit" class="b1">Register</button>&emsp;&emsp;<button type="reset" class="b2">Clear</button></center>
				<center><a href="Login.jsp">Return to Admin Login</a></center>
                </fieldset>
        	</div>
    	</div>
       	</form> 
    </body>
</html>
			