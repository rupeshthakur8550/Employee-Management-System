<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Information</title>  
	<link rel="stylesheet" href="Format.css">
</head>
<body>
	<div class="row">
    <div class="col-md-12">
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
	<center><a href="index.jsp">Return to Admin Console</a></center>
	</form>
	</div>
	</div>
</body>
</html>
