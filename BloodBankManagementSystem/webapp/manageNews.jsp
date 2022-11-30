<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.html"%>
<html>
<head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #999999;
  color: black;
}
#customers td a{
	text-decoration: none;
	color: black;
}
</style>
</head>
<body>
<br>
<%
String msg = request.getParameter("msg");
if("valid".equals(msg)){	
%>
<center>
	<font color="red" size="5">Successfully Updated !</font>
</center>
<%} %>

<%
if("invalid".equals(msg)){
%>
<center>
	<font color="red" size="5">Some Thing Went Wrong Try Again !</font>
</center>
<%} %>

<%
if("deleted".equals(msg)){
%>
<center>
	<font color="red" size="5">Successfully Deleted !</font>
</center>
<%} %>



<center>
<table id="customers">
	<tr>
		<th>ID</th>
		<th>Tittle</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	<tr>
<%
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select *from news");
	while(rs.next()){
%>
		<td><%=rs.getInt(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><a href="updateNews.jsp?id=<%=rs.getString(1)%>">Edit</a></td>
		<td><a href="deleteNews.jsp?id=<%=rs.getString(1)%>">Delete</a></td>
	</tr>
<%
	}
}
catch(Exception e){
	System.out.print(e);
}
%>
</table>
</center>
<br>
<br>
<br>
<br>
<h3><center>CTU - J2EE 2022</center></h3>
</body>
</html>