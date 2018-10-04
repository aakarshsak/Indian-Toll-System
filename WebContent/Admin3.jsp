<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.example.*" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
	<title>
		Admin Details trial
	</title>
	<link rel="stylesheet" type="text/css" href="stylesheet.css">
</head>
<body id="content">
	<div class="header">
		<h1>Indian Toll System</h1>
		&nbsp;<h class="subtitle">A faster way to pay</h>
	</div>
	<div id="cover">
		<p class="d">Date:</p>
		<form>
		<input id="dat" type="date" name="">
		<p class="v">Vechile Number:</p>
		<input id="search_by_car_no" type="text" name="search" placeholder="Enter Car Number"><br>
		<input id="search" type="submit" value="Search" />

		</form>
		</div>
		<br/>
		<hr/><br/>
		
		
		
		<%
		String carNumber=request.getParameter("search");
		if(carNumber!=null){
		List<CarsList> cl1=CarsListDao.fetchParticular(carNumber);
		
	
	%>
	
	<table style="border:0px solid red;width:100%;">
		<tr><th style="text-align:center;">Time</th><th>Car Number</th></tr>
		
		<%for(CarsList c:cl1){%>
		<tr><td style="text-align:center;padding-top:15px;"><%=c.getTime() %></td><td style="text-align:center;padding-top:15px;"><%=c.getCarNumber() %></td></tr>
		
		<% } %> 
		
		<% } %> 
	
	
	</table>
		
		<%if(carNumber==null){
		List<CarsList> cl=CarsListDao.fetch();
			
			%>
	<table style="border:0px solid red;width:100%;">
		<tr><th style="text-align:center;">Time</th><th>Car Number</th></tr>
		
		<%for(CarsList c:cl){%>
		<tr><td style="text-align:center;padding-top:15px;"><%=c.getTime() %></td><td style="text-align:center;padding-top:15px;"><%=c.getCarNumber() %></td></tr>
		
		<% } %> 
		<% } %> 
	
	
	</table>
	
</body>
</html>