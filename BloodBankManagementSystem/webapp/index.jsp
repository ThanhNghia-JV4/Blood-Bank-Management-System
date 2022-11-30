<html>
<head>
	<link rel="stylesheet" href="style1.css">
	<link rel="icon" type="image/png" sizes="16x16"  href="favicon-16x16.png">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="theme-color" content="#ffffff">
	<title>Blood Bank</title>
<style>

</style>
</head>
<body>

<div class="header">
  <div class="header-right">
  	<a href="findDoctor.jsp">Find A Doctor</a>
    <a href="index.jsp">Home</a>
    <a href="adminLogin.jsp">Admin Login</a>
    <a href="aboutUS.jsp">About US </a>
    <a href="question.jsp">Question</a>
  </div>
</div>

<body>
  <br>
  
  <%
  String msg = request.getParameter("msg");
  if("valid".equals(msg)){
	  %>
	  <center>
		  <font color="red" size="5">
		  	Form Submitted Successfully. You Will Get Notified 	With in 24 hours.
		  </font>
	  </center>
	  <br>
	  <%
  }
  %>
  
  <%
  if("invalid".equals(msg)){
	  %>
	  <center>
		  <font color="red" size="5">
		  	Invalid Data ! Try Again !
		  </font>
	  </center>
	  <br>
	  <%
  }
  %>
  

<div class="container" id="container">
	<div class="form-container sign-in-container">
		<form action="indexFormAction.jsp" method="post">
			<h1>Blood Bank</h1>
			<br>
			<input type="text" name="name" placeholder="Enter Name" required>
		 	<input type="text" name="mobilenumber" placeholder="Enter Mobile Number" required>
		 	<input type="mail" name="email" placeholder="Enter Email Address" required>
		 	<input type="text" name="bloodgroup" placeholder="Enter Blood Group" required>
			<button><span>Submit</span></button>
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
<h3><center>CTU - J2EE 2022</center></h3>

</body>
</html>

