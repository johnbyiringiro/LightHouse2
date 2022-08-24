<%@ page import="lombok.var" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart Display</title>
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
<nav class="navbar" style="background: #ffc107">
  <div class="max-width">
    <div class="logo"><a href="#">LightHouse</a></div>
    <ul class="menu">
      <li><a href="/home" class="menu-btn">HOME</a></li>
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

      <li ><a class="menu-btn" href="/logout">LOGOUT</a>
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

    <div class="container">
      <div style="margin: auto;
  width: 80%;
  border: 20px solid Orange;
  padding: 10px;" >

	<h1> Cart </h1>


		<c:choose>
			<c:when test="${empty carts }">
				<h1>Please Add Product To Cart.</h1>
			</c:when>
			<c:otherwise>
				<table border="1" cellpadding="3" class="styled-table">
					<tr>
						<td><b>ID</b></td>
						<td><b>product name</b></td>
						<td><b>Price</b></td>
						<td><b>Quantity</b></td>
						<td><b>Amount</b></td>
						<td><b>Action</b></td>
					</tr>


					<%! float total = 0; %>
					<c:forEach items="${carts}" var="carts">
						<c:set var="total" value="${total + carts.price * carts.quantity }"></c:set>
						<tr>

							<td>${carts.id }</td>
							<td>${carts.productName }</td>
							<td>${carts.price }</td>
							<td><form method="get" action="/editCart"><input type="hidden" name="id" value="${carts.id }">  <input type="number" name="quentity" value="${carts.quantity }" style="width: 100px" > <input type="hidden" name="productName"  value="${carts.productName }" > <input type="hidden" name="price" value="${carts.price }" > <input type="submit" style="width: 100px" value="Edit" > </form></td>
							<td>${carts.price * carts.quantity }</td>

							<td><a href="/deleteCart?id=${carts.id }">Delete</a> </td>
						</tr>
					</c:forEach>
					<tr style="border: 1px solid black">
						<td colspan="4"  align="right">Total</td>
						<td>${total }</td>
						<td  align="right"><a href="/checkout">Checkout</a></td>
					</tr>
				</table>

			</c:otherwise>
		</c:choose>
      </div>
	</div>
</div>
</body>

</html>
