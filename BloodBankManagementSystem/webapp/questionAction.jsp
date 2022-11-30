<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%

String name = request.getParameter("name");
String number = request.getParameter("number");
String email = request.getParameter("email");
String aws = request.getParameter("aws");
String status = "pending";
try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into aws values(?,?,?,?,?)");
	ps.setString(1, name);
	ps.setString(2, number);
	ps.setString(3, email);
	ps.setString(4, aws);
	ps.setString(5, status);
	
	ps.executeUpdate();
	response.sendRedirect("question.jsp?msg=valid");
}
catch (Exception e){
	response.sendRedirect("question.jsp?msg=invalid");
}
%>