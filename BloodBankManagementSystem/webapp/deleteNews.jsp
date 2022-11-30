<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id = request.getParameter("id");
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("delete from news where id = '"+id+"'");
	response.sendRedirect("manageNews.jsp?msg=deleted");
}
catch(Exception e){
	response.sendRedirect("manageNews.jsp?msg=invalid");
}
%>