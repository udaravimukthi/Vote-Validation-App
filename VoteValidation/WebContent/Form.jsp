<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
select {
  width: 100%;
  padding: 16px 20px;
  border: none;
  border-radius: 4px;
  background-color: #f1f1f1;
}
</style>
<title>Vote Validation Form</title>
</head>
<body>
<form action = "ValidationServlet" method="get">
<div class="container">
<h1>Vote Validation Form</h1>
    <p>Please fill in this form to see whether you are a valid user</p>
    <hr>
    <label for="fname"><b>First Name:</b></label>
    <input type="text" name = "fname" id = "fname" placeholder="Enter Your First Name" required>

    <label for="lname"><b>Last Name:</b></label>
    <input type="text" name = "lname" id = "lname" placeholder="Enter Your Second Name" required>

    <label for="age"><b>Age: </b></label>
    <input type="text" name = "age" id = "age" placeholder="Enter Your Age" required>
    <hr>
	<label for="citizen"><b>Current Citizenship</b></label>
	<select name ="citizen">
	<option value=1 selected>Sri Lanka</option>
	<option value=2>USA</option>
	<option value=3>Australia</option>
	<option value=4>New Zealand</option>
	</select><br>
	<p><input type="checkbox" class="checkboxValue" name="checkboxValue" value="multi"> I have a Multiple Citizenship</p><br>
	<button type="submit" class="registerbtn">submit</button>
</div>
</form>
</body>
</html>