<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Vote validation Form</h3>
	<form action="FirstServlet" method="post" >
	
	<p>First name:<br><input type="text" name="fname" required></p>
	<p>Last name:<br><input type="text" name="lname" required></p>
	<p>Age:<br><input type="text" name="age" required></p>
	<p>Current Citizenship:<br><select name="citizen">
  			<option value="SriLanka">SriLanka</option>
  			<option value="India">India</option>
  			<option value="England">England</option>
  			<option value="Other">Other</option>
	</select></p>
	<p><input type="checkbox" value="multi" name="multi">I have a Multiple citizenship</p>
	<input type="submit" value="Submit">
	</form>
</body>
</html>