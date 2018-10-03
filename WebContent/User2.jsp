<!DOCTYPE>
<html>
	<head>
		<title>User Details</title>
		<style>
			
			h1.title{color:#3f51bf;text-align:center;font-size:450%;border:2px outset red;margin-bottom:5px;padding:50px;/* background-color:#ffab91 */}
			#details{color:#455a64;font-size:20px;padding:0px 0px 0px 50px ;}
		</style>
	</head>


	<body>
		<h1 class="title">Indian Toll System</h1>
		<pre id="details">Name:<%=(String)session.getAttribute("Name")%>          Mobile:<%=(String)session.getAttribute("Mobile")%>          Adhar:<%=(String)session.getAttribute("Adhar") %>          Car:<%=(String)session.getAttribute("Car") %></pre>
	
		<br/><br/>
		

	
	</body>


</html>