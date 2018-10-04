<%@ page import="com.example.*" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<%
		String carNumber=request.getParameter("search");
		
		List<CarsList> cl=CarsListDao.fetchParticular(carNumber);
		
	
	%>
	
	<table style="border:0px solid red;width:100%;">
		<tr><th style="text-align:center;">Time</th><th>Car Number</th></tr>
		
		<%for(CarsList c:cl){%>
		<tr><td style="text-align:center;padding-top:15px;"><%=c.getTime() %></td><td style="text-align:center;padding-top:15px;"><%=c.getCarNumber() %></td></tr>
		
		<% } %> 
	
	
	</table>

</body>
</html>