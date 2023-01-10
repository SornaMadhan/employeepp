<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="index.jsp" />
	<hr>
	<c:choose>
		<c:when test="${msg.getClass().getSimpleName().equals(\"String\") }">
		<h2>${ msg }</h2>
		</c:when>
		<c:otherwise>
				<table border="2" align="center" class="table table-striped">
				<tr>
				<th>Employee ID</th>
				<th>Employee Name</th>
				<th>Email-Id</th>
				<th>Date Of Birth</th>
				<th>Age</th>
				<th>Salary</th>
				<th>Status</th>
				<th colspan="2">Action</th>
				</tr>
			<c:forEach var="allEmployee" items="${msg}">
				<tr>
				<td>${allEmployee.employeeId}</td>
				<td>${allEmployee.employeeName}</td>
				<td>${allEmployee.emailId}</td>
				<td>${allEmployee.dateOfBirth}</td>
				<td>${allEmployee.age}</td>
				<td>${allEmployee.salary}</td>
				<td>${allEmployee.employeeStatus}</td>
				<td><a href="./edit/${allEmployee.employeeId}">Edit</a></td>
				<td><a href="./delete/${allEmployee.employeeId}">Delete</a></td>
				</tr>
			</c:forEach>
			</table>
			
		</c:otherwise>
	</c:choose>
	
</body>
</html>