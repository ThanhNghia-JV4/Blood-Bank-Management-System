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
<center>
	<table id="customers">
		<tr>
			<th>Name</th>
			<th>Number</th>
			<th>Email</th>
			<th>Question</th>
			<th>Done</th>
			<th>Detele</th>
		</tr>
		<tr>
<%
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select *from aws where status='pending'");
	while(rs.next()){ 
%>
	<td><%=rs.getString(1) %></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getString(3) %></td>
	<td><%=rs.getString(4) %></td>
	<td><a href="requestForQuestionDone.jsp?number=<%=rs.getString(2) %>">Done</a></td>
	<td><a href="requestForQuestionDelete.jsp?number=<%=rs.getString(2) %>">Detele</a></td>
	</tr>	
<%		
	}
}
catch(Exception e){
	System.out.println(e);
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