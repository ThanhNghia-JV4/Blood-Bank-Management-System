<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<html>
<head>
	<link rel="stylesheet" href="style1.css" type="text/css" media="screen">
 	<link rel="icon" type="image/png" sizes="16x16"  href="favicon-16x16.png">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="theme-color" content="#ffffff">
	<title>Add News</title>
<style>
</style>
</head>
<body>
<%
String msg = request.getParameter("msg");
if("valid".equals(msg)){
	
%>
<center>
	<font color="red" size="5">Successfully Updated !</font>
</center>
<br>
<%} %>
<%
if("invalid".equals(msg)){
	
%>
<center>
	<font color="red" size="5">Some Thing Went Wrong Try Again !</font>
</center>
<%} %>




<div class="container" id="container">
<%
int id = 0;
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select max(id) from news");
	
	if(rs.next()){
		id = rs.getInt(1);
		id += 1;
	}
}
catch(Exception e){
}
%>
	
	<div class="form-container sign-in-container">
		<h1 style="color: red;">Donor ID: <%out.println(id); %></h1>
		<form action="addNewsAction.jsp" method="post">
			<input type="hidden" name="id" value="<%out.println(id); %>">
			<h3>Add News</h3></td>
			
				<input type="text" name="title" placeholder="Title" >
			
				<input type="text" name="content" placeholder="Content"></input>
		
				<button>Submit</button>
		
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-right">
				<h1>Hello, Friend!</h1>
				<p>This information will help many people</p>
			</div>
		</div>
	</div>	
</div>
<br>
<h1><a href="home.jsp">Home</a></h1>
<h3><center>CTU - J2EE 2022</center></h3>
</body>
</html>