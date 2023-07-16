<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Update Employee Information</title>  
		<link rel="stylesheet" href="Format.css">
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
      	<div class="row">
    	<div class="col-md-12">
		<form action="./Insert" method="post" name="myform" onsubmit="return validate()">       
        <fieldset>
          	<legend>Update Employee Details</legend>
          	<label for="name">Employee Name:</label><input type="text" id="name" name="name"><br>
        	<label for="id">Employee ID:</label><input type="text" id="id" name="id"><br>
        	<label for="id">Address:</label><textarea rows="2" cols="21" name="address" maxlength="100" ></textarea><br>
          	<label>Gender:</label><input type="radio" id="male" name="gender" value="male">Male &emsp;&emsp;<input type="radio" id="female" name="gender" value="female">Female
			<label for="name">Fathers Name:</label><input type="text" id="fname" name="fname"><br>
			<label for="id">Organization Email:</label><input type="email" id="email" name="email"><br>
			<label for="name">Mobile Number:</label><input type="text" id="pno" name="pno"><br>
			<label for="country" class="label">Select Country:</label>
			<select name="country" id="country" style="width:160px">
				<option value="India">India</option>
				<option value="USA">America</option>
				<option value="Australia">Australia</option>
				<option value="Afganistan">Afganistan</option>
				<option value="UK">Uk</option>
				<option value="Pakistan">Pakistan</option>
			</select>
		</fieldset>
        <center><button type="submit" class="b1">Update Details</button>&emsp;&emsp;<button type="reset" class="b2">Clear</button></center>
		<center><a href="index.jsp">Return to Admin Console</a></center>
       	</form>
        </div>
    	</div> 
    </body>
</html>
