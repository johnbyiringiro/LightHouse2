<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product</title>
  <link href="style.css" rel="stylesheet" type="text/css">
  <style type="text/css">

    .navbar {
      background: blue;
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
<nav class="navbar" style="background: red">
  <div class="max-width">
    <div class="logo"><a href="#">LightHouse</a></div>
    <ul class="menu">
      <li><a href="/home" class="menu-btn">HOME
      
      </a></li>
      <li ><a class="menu-btn" href="/product">ADD PRODUCT
      </a></li>
      <li ><a class="menu-btn" href="/productEdit">EDIT PRODUCT
      
      </a></li>
      <li ><a class="menu-btn" href="/productDisplay">ALL PRODUCT
      
      </a></li>
      <li ><a class="menu-btn" href="/categoryDisplay">ALL CATEGORY
      </a></li>
      <li ><a class="menu-btn" href="/cartDisplay">VIEW CART
      </a></li>

      <li ><a class="menu-btn" href="/logout">Logout</a>
    </ul>
    <div class="menu-btn">
      <i class="fas fa-bars"></i>
    </div>
  </div>
</nav>
<!-- home section start -->
<section >
</section>
<!-- navbar -->

	<div class="container">
	<!-- navbar -->
    <div style="margin: auto;
  width: 40%;
  border: 1px solid red;
  padding: 10px;" >

	<form method="post" action="/product"
		enctype="multipart/form-data">
		<!-- Create Recipe Form -->
		<h1>Product</h1>
		<c:forEach var="error" items="${errors}">
			<span style='color: red'>${error}</span>
			<br>
		</c:forEach>

		<div class="mb-3">
				<label for="formGroupExampleInput1" class="form-label">

          Product Name </label><br/> <input type="text" class="form-control"
					id="fexampleFormControlInput1" name="productName"
					value="${form.productName }" style="width: 100%" />
				<c:forEach items="${errorFields}" var="errorField">
					<c:if test='${errorField.getField().equals("productName") }'>
						<br>
						<span style='color: red'>${errorField.defaultMessage}</span>

					</c:if>
				</c:forEach>
			</div>

			<div class="mb-3">
				<label for="formGroupExampleInput1" class="form-label">
					quantity </label><br/> <input type="number" class="form-control"
					id="fexampleFormControlInput1" name="quantity"
					value="${form.quantity }" style="width: 100%" />
				<c:forEach items="${errorFields}" var="errorField">
					<c:if test='${errorField.getField().equals("quantity") }'>
						<br>
						<span style='color: red'>${errorField.defaultMessage}</span>

					</c:if>
				</c:forEach>
			</div>

		<div class="mb-3">
			<label for="formGroupExampleInput1" class="form-label">
				price </label> <br/><input type="number" class="form-control"
										 id="fexampleFormControlInput1" name="price"
										 value="${form.price }" style="width: 100%" />
			<c:forEach items="${errorFields}" var="errorField">
				<c:if test='${errorField.getField().equals("price") }'>
					<br>
					<span style='color: red'>${errorField.defaultMessage}</span>

				</c:if>
			</c:forEach>
		</div>

		<div class="mb-3">
			<label for="formGroupExampleInput1" class="form-label">
				category </label> <br/> <input type="text" class="form-control"
									  id="fexampleFormControlInput1" name="category"
									  value="${form.category }" style="width: 100%" />
			<c:forEach items="${errorFields}" var="errorField">
				<c:if test='${errorField.getField().equals("category") }'>
					<br>
					<span style='color: red'>${errorField.defaultMessage}</span>

				</c:if>
			</c:forEach>
		</div>

			<div>
				<button type="submit" value="submit" class="btn btn-primary">Add</button>
			</div>

		</div>

		<br> <br>
	</form>

  </div>
</div>
</body>
</html>
