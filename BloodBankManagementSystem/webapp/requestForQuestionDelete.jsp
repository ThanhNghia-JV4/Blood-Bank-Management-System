<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String number = request.getParameter("number");
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("delete from aws where number= '" + number + "'");
	response.sendRedirect("requestForQuestion.jsp");
}
catch(Exception e){
	response.sendRedirect("requestForQuestion.jsp");
}
%>