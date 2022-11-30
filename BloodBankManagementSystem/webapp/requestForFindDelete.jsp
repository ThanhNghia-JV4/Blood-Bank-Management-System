<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String number = request.getParameter("number");
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("delete from finddoctor where number= '" + number + "'");
	response.sendRedirect("requestForFind.jsp");
}
catch(Exception e){
	response.sendRedirect("requestForFind.jsp");
}
%>