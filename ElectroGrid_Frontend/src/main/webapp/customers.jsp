
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.Customer"%>
<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.cj.jdbc.Driver"); %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Management</title>

<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.6.0.min.js"></script>
<script src="Components/customers.js"></script>

</head>
<body>
<div class="container"><div class="row"><div class="col-6"> 
<br><br>

<!-- Customer Registration From -->

<h1>Customer Registration : </h1>
<br>
		 <form id="formCustomer" name="formcustomer" method="post" action="customers.jsp">
		 
		 Customer NIC : 
		 <input id="NIC" name="NIC" type="text" class="form-control form-control-sm">
		 
		 <br> Customer First Name: 
		 <input id="CustomerFirstName" name="CustomerFirstName" type="text"  class="form-control form-control-sm">
		 
		 <br> Customer Last Name: 
     	 <input id="CustomerLastName" name="CustomerLastName" type="text"  class="form-control form-control-sm">
     	 
		 <br> Customer Home Address No : 
		  <input id="HomeNo" name="HomeNo" type="text"  class="form-control form-control-sm">
		  
		  <br> Customer Address Street : 
		   <input id="Street" name="Street" type="text" class="form-control form-control-sm">
		   
		  <br> Customer Home City : 
		   <input id="HomeCity" name="HomeCity" type="text" class="form-control form-control-sm">
		   
		  <br> Customer Phone Number: 
		  <input id="CustomerPhone" name="CustomerPhone" type="text"  class="form-control form-control-sm">
		  
		  <br> Customer Account No : 
		  <input id="AccountNo" name="AccountNo" type="text"  class="form-control form-control-sm">
		  
		  <br> Enter a Password  : 
		  <input id="Password" name="Password" type="text" class="form-control form-control-sm">
		 
		 <br>
		 <input id="btnSave" name="btnSave" type="button" value="Save" 
		 class="btn btn-primary">
		 <input type="hidden" id="hidItemIDSave" 
		 name="hidItemIDSave" value="">
		</form>
		
		<div id="alertSuccess" class="alert alert-success"></div>
		<div id="alertError" class="alert alert-danger"></div>
<br>

<!-- Table to display details of registered customers  -->

<div id="divItemsGrid">
 <%
  Customer custObj = new Customer(); 
  out.print(custObj.readCustomers()); 
 %>
</div>

</div> 
</div> 
</div> 

</body>
</html>