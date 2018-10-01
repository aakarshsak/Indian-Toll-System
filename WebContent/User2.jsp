<!DOCTYPE html>
<html>
<head>
	<title>
		User Details
	</title>
	<link rel="stylesheet" type="text/css" href="sec_page.css">
</head>
<body id="content">
	
	<div class="header">
		<h1>Indian Toll System</h1>
		&nbsp;<h class="subtitle">A faster way to pay</h>
	</div>
	<p class="user">You are Logged In...</p>
	<div id="details">
		<p>
			Name:<%=(String)session.getAttribute("Name") %><br>
			Car number:<%=(String)session.getAttribute("Car") %><br>
			Adhaar Number:<%=(String)session.getAttribute("Adhar") %><br>
			Mobile Number:<%=(String)session.getAttribute("Mobile") %><br>
			Transaction Details:<br>
		</p>
		

	</div>
</body>
</html>