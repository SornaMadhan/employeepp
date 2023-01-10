<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Edit Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
<c:choose>
	<c:when test="${employee.getClass().getSimpleName().equals(\"String\") }">
		<h2>${employee }</h2>
	</c:when>
	<c:when test="${employee.getClass().getSimpleName().equals(\"EmployeeDto\") }" >
	<br>
	<form action="../../employee-app/update-employee" method="post">
		<div class="mb-3">
			<label>Employee ID</label>
			<input class="form-control" name="employeeId" type="text" value="${employee.employeeId}"aria-label="readonly input example" readonly>
		</div>
		<div class="mb-3">
	    <label class="form-label">Employee Name</label>
	    <input type="text" class="form-control"  aria-describedby="" name="employeeName" value="${employee.employeeName }">
	  </div>
	  <div class="mb-3">
	    <label class="form-label">Email address</label>
	    <input type="email" class="form-control" aria-describedby="emailHelp" name="emailId" value="${ employee.emailId}">
	    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
	  </div>
	  <div class="mb-3">
	    <label class="form-label">Date Of Birth</label>
	    <input type="date" class="form-control"  aria-describedby="emailHelp" name="dateOfBirth" value="${employee.dateOfBirth }">
	  </div>
	  <div class="mb-3">
	    <label  class="form-label">Salary</label>
	    <input type="text" class="form-control"  aria-describedby="emailHelp" name="salary" value="${ employee.salary}">
	  </div>
	  <label>Employee Status :</label>
			<c:choose>
				<c:when test="${employee.employeeStatus.equals(\"Active\")}">
					<div class="form-check">
						  <input class="form-check-input" type="radio" name="employeeStatus" id="employeeStatus" checked>
						  <label class="form-check-label" for="employeeStatus"> Active</label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="employeeStatus" id="employeeStatus" >
						  <label class="form-check-label" for="employeeStatus">
						    Inactive  
						  </label>
				</c:when>
				<c:when test="${employee.employeeStatus.equals(\"InActive\")}">
						<input class="form-check-input" type="radio" name="employeeStatus" id="employeeStatus" >
						  <label class="form-check-label" for="employeeStatus">Active</label>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="employeeStatus" id="employeeStatus" checked="checked">
						  <label class="form-check-label" for="employeeStatus">Inactive  </label>
				</c:when>
				<c:otherwise>
					<label for="Active">Active</label><input type="radio" name="employeeStatus" value="Active" id ="Active">
					<label for="Inactive">InActive</label><input type="radio" name="employeeStatus" value="Inactive" id="Inactive">
				</c:otherwise>
			</c:choose>
	  
			</div>
			<br>
	  		<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</c:when>
	</c:choose>
</body>
</html>