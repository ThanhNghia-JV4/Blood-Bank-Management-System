<!DOCTYPE html>
<html lang="en">
<head>
	<link rel="stylesheet" href="style1.css" type="text/css" media="screen">
	<link rel="icon" type="image/png" sizes="16x16"  href="favicon-16x16.png">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="theme-color" content="#ffffff">
	<title>Admin login</title>
<style>

</style>
</head>
<body>
<div class="header">
  <div class="header-right">
  	<a href="findDoctor.jsp">Find A Doctor</a>
    <a href="index.jsp">Home</a>
    <a href="aboutUS.jsp">About US </a>
    <a href="question.jsp">Question</a>
    
  </div>
</div>
<body>

<div class="container" id="container">
	<%
	String msg = request.getParameter("msg");
	if("invalid".equals(msg)){
	%>
	<center><font color="red" size = "5">Invalide Username/Password</font></center>
	<%
	}
	%>
	<div class="form-container sign-in-container">
		<form action="adminLoginAction.jsp" method="post">
			<h1>Admin Login</h1>
			<br>
			<input type="text" placeholder="Enter Username" name="username" required>
			<input type="password" placeholder="Enter password" name="password" required>
			<button type="submit" class="button">Submit</button>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-right">
				<h1>Hello, Friend!</h1>
				<p>Enter your personal details and start journey with us</p>
			</div>
		</div>
	</div>
</div>
<br>
<br>
<br>
<br>
<h3><center>CTU - J2EE 2022</center></h3>
</body>
</html>
