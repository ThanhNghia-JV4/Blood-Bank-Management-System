<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
input[type="text"], input[type="password"], input[type="email"], select,input[type="number"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	padding:15px;
	width:60%;	
	
	border-radius: 25px;
	margin-left:20%;
}
h2,h1
{	
	margin-left:20%;
}
hr
{
width:60%;	
}
</style>
</head>
<body>
<%
String id = request.getParameter("id");
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select *from news where id = '"+id+"' ");
	while(rs.next()){
%>
<div class = "container">
	<form action="updateNewsAction.jsp" method="post">
		<input type="hidden" name="id" value="<% out.print(id); %>">
		
		<h2>Title</h2>
		<input type="text" value="<%=rs.getString(2)%>" name="title">
		<h2>Content</h2>
		<input type="text" value="<%=rs.getString(3)%>" name="content">
		

		<br>
		<br>
		<center><button type="submit" class="button">Save</button></center>
	</form>
</div>
<%
	}
}
catch(Exception e){
	System.out.print(e); 
}
%>


<br>
<br>
<br>
<br>
<h3><center>CTU - J2EE 2022</center></h3>

</body>
</html>