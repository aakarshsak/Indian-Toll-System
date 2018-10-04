<!DOCTYPE html>
<html>
<head>


	<title>
		Admin Details
	</title>
	<link rel="stylesheet" type="text/css" href="Admin2.css">
</head>
<body id="content">
	
	<div class="header">
		<h1>Indian Toll System</h1>
		&nbsp;<h1 class="subtitle">A faster way to pay</h1>
	</div>
	<div id="details" >
		<p class="ad">
			Welcome!<%=(String)session.getAttribute("Name") %><br>
			<p class="ques">Which Highway would you like to see?</p>
		
		<p class="nh">
			<p class="nh1">National Highway - 01<br><br><a class="nh1" href="Admin3.jsp" style="text-decoration: none;color: white;">Bangalore-Tumkur</a> &nbsp;&nbsp;&nbsp;<a class="nh11" href="four_page.html" style="text-decoration: none;color: white">Tumkur-Bangalore</a>
			</p>
			<p class="nh2">National Highway - 02<br><br><a class="nh2" href="Admin3.jsp" style="text-decoration: none;color: white;">Belgaum-Gunji</a> &nbsp;&nbsp;&nbsp;<a class="nh22" href="four_page.html" style="text-decoration: none;color: white">Gunji-Belgaum</a>
			 </p>

			 <p class="nh3">National Highway - 03<br><br><a class="nh3" href="Admin3.jsp" style="text-decoration: none;color: white;">Tumkur-Honvanar</a> &nbsp;&nbsp;&nbsp;<a class="nh33" href="four_page.html" style="text-decoration: none;color: white">Honvanar-Tumkur</a>
			 </p>

			 <p class="nh4">National Highway - 04<br><br><a class="nh4" href="Admin3.jsp" style="text-decoration: none;color: white;">Gwalior-Indore</a> &nbsp;&nbsp;&nbsp;<a class="nh44" href="four_page.html" style="text-decoration: none;color: white">Indore-Gwalior</a>
			 </p>

			 <p class="nh5">National Highway - 05<br><br><a class="nh5" href="Admin3.jsp" style="text-decoration: none;color: white;">Katni-Shadol</a> &nbsp;&nbsp;&nbsp;<a class="nh55" href="four_page.html" style="text-decoration: none;color: white">Shadol-katni</a>
			 </p>


	</div>
</body>
</html>