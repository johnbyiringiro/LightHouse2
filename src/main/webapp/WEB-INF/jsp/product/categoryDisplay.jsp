<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Category Display</title>
  <link href="style.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="all.min.css"/>
  <script src="jquery-3.5.1.min.js"></script>
  <script src="typed.min.js"></script>
  <script src="jquery.waypoints.min.js"></script>
  <script src="owl.carousel.min.js"></script>
  <link rel="stylesheet" href="owl.carousel.min.css"/>
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

    .styled-table {
      border-collapse: collapse;
      margin: 25px 0;
      font-size: 0.9em;
      font-family: sans-serif;
      min-width: 400px;
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
    }


    .styled-table thead tr {
      background-color: #009879;
      color: #ffffff;
      text-align: left;
    }
    .styled-table th,
    .styled-table td {
      padding: 12px 15px;
    }

    .styled-table tbody tr {
      border-bottom: 1px solid #dddddd;
    }

    .styled-table tbody tr:nth-of-type(even) {
      background-color: #f3f3f3;
    }

    .styled-table tbody tr:last-of-type {
      border-bottom: 2px solid #009879;
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
      <li><a href="/home" class="menu-btn">HOME</a></li>
      <li ><a class="menu-btn" href="/product"> ADD PRODUCT</a></li>
      <li ><a class="menu-btn" href="/productEdit">  EDIT PRODUCT</a></li>
      <li ><a class="menu-btn" href="/productDisplay">ALL PRODUCT
   </a></li>
      <li ><a class="menu-btn" href="/categoryDisplay">ALL CATEGORY
  </a></li>
      <li ><a class="menu-btn" href="/cartDisplay">VIEW CART
      </a></li>

      <li ><a class="menu-btn" href="/logout">LOGOUT</a>
    </ul>
    <div class="menu-btn">
      <i class="fas fa-bars"></i>
    </div>
  </div>
</nav>
<!-- home section start -->
<section >
</section>	<!-- navbar -->
	<!-- navbar -->
	<div class="container">

    <div class="container">
      <div style="margin: auto;
  width: 50%;
  border: 2px solid red;
  padding: 10px;" >

	<h1> All Categories </h1>
		<br>
		<c:choose>
			<c:when test="${empty categories }">
				<h1>No results found.</h1>
			</c:when>
			<c:otherwise>
				<table border="1" cellpadding="3" class="styled-table" style="width: 100%" >
					<tr>
						<td><b>ID</b></td>
						<td><b>Category name</b></td>
					</tr>

					<c:forEach items="${categories}" var="categories">
						<tr>
							<td>${categories.id }</td>
							<td>${categories.category_name }</td>
						</tr>
					</c:forEach>
				</table>
			</c:otherwise>
		</c:choose>
      </div>
	</div>
</div>
</body>

</html>
