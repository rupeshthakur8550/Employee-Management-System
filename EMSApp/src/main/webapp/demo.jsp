<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert Employee Information</title>
<link rel="stylesheet" href="Format.css">
<script language="javascript">
	function validate()
	{
		var id=document.myform.id;
		
		if(id.value.length<=0){
			alert("Employee ID is Required");
			id.focus();
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<div class="row" style="padding-top: 16vh;">
		<div class="col-md-12">
			<form action="./Delete" method="post" name="myform" onsubmit="return validate()">
				<fieldset>
					<legend>Delete Employee Details</legend>
					<label for="name">Employee ID:</label><input type="text" id="id" name="id"><br> 
				</fieldset>
				<center>
					<button type="submit" class="b1">Delete</button>
					&emsp;&emsp;
					<button type="reset" class="b2">Clear</button>
				</center>
				<center>
					<a href="index.jsp">Return to Admin Console</a>
				</center>
			</form>
		</div>
	</div>
</body>
</html>
