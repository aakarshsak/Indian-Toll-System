<%@ page import="com.example.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Indian Toll System</title>
</head>
<body>

<%
	

	String phoneNumber=request.getParameter("phoneNumber");
	int pass=Integer.parseInt(request.getParameter("password"));
	User u=UserDao.login(phoneNumber,pass);
	
	
	
	if(u.isStatus())
	{	
		
		session.setAttribute("Adhar",u.getAdhar());
		session.setAttribute("Car",u.getCar());
		session.setAttribute("Name",u.getName());
		session.setAttribute("Mobile",u.getPhoneNumber());
		response.sendRedirect("User2.jsp");
	}
	else{
%>

<%@ include file="index.html" %>

Invalid Username password


<% } %>
</body>
</html>