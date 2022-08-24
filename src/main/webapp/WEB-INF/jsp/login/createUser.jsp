<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
  <link href="style.css" rel="stylesheet" type="text/css">

  <style type="text/css">

    .navbar {
      background: #111111;
    }

    input{
      width: 20%;
      padding: 12px 20px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      box-sizing: border-box;
    }
  </style>
</head>
<!--  navbar   -->
<body>
<div class="scroll-up-btn">
  <i class="fas fa-angle-up"></i>
</div>
<nav class="navbar" style="background: blue;">
  <div class="max-width">
    <div class="logo"><a href="#">NEW ACCOUNT</a></div>
    <ul class="menu">
      <li><a href="/home" class="menu-btn">HOME</a></li>
      <li><a href="/createUser" class="menu-btn">CREATE ACCOUNT</a></li>
      <li><a href="/login" class="menu-btn">LOGIN</a></li>
    </ul>
    <div class="menu-btn">
      <i class="fas fa-bars"></i>
    </div>
  </div>
</nav>
<!-- home section start -->
<section >
</section>


	<!-- Create User Form-->
	<div class="container">

    <div style="margin: auto;
  width: 50%;
  border: 30px solid blue;
  padding: 10px;" >

		<form  method="post" action="/createUser">
			<h1>Create Account</h1>

			<c:forEach var="error" items="${errors}">
				<span style='color: red'>${error}</span>
				<br>
			</c:forEach>
      <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Full Name</label>
        <br/><input type="text" class="form-control" name="fullName"
                    value="${form.fullName }" style="width: 100%" >
      </div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Email
					Address</label>
        <br/>
        <input type="email" name="email" value="${form.email }"
					class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" style="width: 100%" >
				<c:forEach items="${errorFields}" var="errorField">
					<c:if test='${errorField.getField().equals("email") }'>
						<br>
						<span style='color: red'>${errorField.defaultMessage}</span>

					</c:if>
				</c:forEach>
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Password</label>
        <br/><input type="password" name="password" value="${form.password }"
					class="form-control" id="exampleInputPassword1" style="width: 100%" >
				<c:forEach items="${errorFields}" var="errorField">
					<c:if test='${errorField.field == "password" }'>
						<br>
						<span style='color: red'>${errorField.defaultMessage}</span>
					</c:if>
				</c:forEach>
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Confirm
					Password</label><br/> <input type="password" name="confirmPassword"
					value="${form.confirmPassword }" class="form-control"
					id="exampleInputPassword1" style="width: 100%" >
				<c:forEach items="${errorFields}" var="errorField">
					<c:if test='${errorField.field == "confirmPassword" }'>
						<br>
						<span style='color: red'>${errorField.defaultMessage}</span>
					</c:if>
				</c:forEach>
			</div>


			<button type="submit" value="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
  </div>
</body>
</html>
