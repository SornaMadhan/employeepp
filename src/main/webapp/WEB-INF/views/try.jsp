<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Employee</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="index.jsp"></jsp:include>
	<hr>
<div class="container">
<h1>Employee Registration Form</h1>

<form action="add-employee-details" method="post">
	<div class="mb-3">
    <label class="form-label">Employee Name</label>
    <input type="text" class="form-control"  aria-describedby="" name="employeeName">
  </div>
  <div class="mb-3">
    <label class="form-label">Email address</label>
    <input type="email" class="form-control" aria-describedby="emailHelp" name="emailId">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label class="form-label">Date Of Birth</label>
    <input type="date" class="form-control"  aria-describedby="emailHelp" name="dateOfBirth">
  </div>
  <div class="mb-3">
    <label  class="form-label">Salary</label>
    <input type="text" class="form-control"  aria-describedby="emailHelp" name="salary">
  </div>
  <div class="form-check">
  <input class="form-check-input" type="radio" name="employeeStatus" id="employeeStatus" value="Active">
  <label class="form-check-label" for="employeeStatus">
    Active
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="employeeStatus" id="employeeStatus" value="Inacive">
  <label class="form-check-label" for="employeeStatus">
    Inactive  
  </label>
</div>
<br>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
</body>
</html>