<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Console</title>  
	<link rel="stylesheet" href="Format.css">
	<style>
	input[type="button"]{
    padding: 19px 39px 18px 39px;
    color: #FFF;
    font-size: 18px;
    text-align: center;
    font-style: normal;
    background-color: #008CBA;
    border-radius: 5px;
    width: 35%;
    border: 1px solid #000000;
    border-width: 1px 1px 3px;
    box-shadow: 0 -1px 0 rgba(255,255,255,0.1) inset;
    margin-bottom: 10px;
  }
	</style>
</head>
<body>
	<div class="row">
    <div class="col-md-12">
    <h2 align="right" style="color:RED; font-size:16px;"><b><a href="Login2.jsp">Log Out</a></b></h2>
	<form>
		<input type="hidden" name="id" value="<%=request.getParameter("id") %>"/>
		<fieldset>
          	<legend>Employee Information</legend>
          	<label for="name">Employee Name:</label><input type="text" value="<%=request.getParameter("name")%>" readonly><br>
        	<label for="id">Employee ID:</label><input type="text" value="<%=request.getParameter("id")%>" readonly><br>        
			<label for="gender">Gender:</label><input type="text" value="<%=request.getParameter("gender")%>" readonly><br>        
			<label for="address">Address:</label><input type="text" value="<%=request.getParameter("address")%>" readonly><br>        
          	<label for="fname">Fathers Name:</label><input type="text" value="<%=request.getParameter("fname")%>" readonly><br>        
			<label for="email">Organization Email:</label><input type="email" value="<%=request.getParameter("email")%>" readonly><br>        
			<label for="name">Mobile Number:</label><input type="text" value="<%=request.getParameter("pno")%>" readonly><br>        
			<label for="country">Country:</label><input type="text" value="<%=request.getParameter("country")%>" readonly><br>        
		</fieldset>
	<center><input type="button" value="Update Data" onclick="update()"/></center>
	</form>
	</div>
	</div>
	
</body>
<script language='javascript'>
	function update()
	{
		var id=document.forms[0].elements['id'].value;
		window.location.href="EUpdate.jsp?id="+id;
	}
</script>
</html>