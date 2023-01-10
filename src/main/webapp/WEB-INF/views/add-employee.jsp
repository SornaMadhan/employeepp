<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee</title>
</head>
<body>
	<jsp:include page="index.jsp"></jsp:include>
	<hr>
	<div class="container">
		<form action="add-employee-details" method="post">
			<label>Employee Name</label>
			<input type="text" name="employeeName">
			<br><br>
			<label>Mail Id</label>
			<input type="email" name="emailId">
			<br><br>
			<label>Date Of Birth</label>
			<input type="date" name="dateOfBirth">
			<br><br>
			<label>Salary</label>
			<input type="text" name="salary">
			<br><br>
			<label>Employee Status :</label>
			<label for="Active">Active</label><input type="radio" name="employeeStatus" value="Active" id ="Active">
			<label for="Inactive">InActive</label><input type="radio" name="employeeStatus" value="Inactive" id="Inactive">
			<br><br>
			<input type="submit" value="Add">
		</form>	
	</div>
</body>
</html>