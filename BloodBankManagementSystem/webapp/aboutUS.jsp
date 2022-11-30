<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<html>
<head>
	<link rel="stylesheet" href="style1.css">
	<link rel="icon" type="image/png" sizes="16x16"  href="favicon-16x16.png">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="theme-color" content="#ffffff">
	<title>AboutUS</title>
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
<h1>News</h1>
<div class="container" id="container">
	
	<%
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select *from news");
	while(rs.next()){
%>
		
		<h2><%=rs.getString(2) %><h2>
		<p><a href="<%=rs.getString(3) %>">Links</a><p>
		
<%
	}
}
catch(Exception e){
	System.out.print(e);
}
%>
</div>




</body>
</html>

