<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%

String number = request.getParameter("number");
String specialities = request.getParameter("specialities");
String status = "pending";
try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into finddoctor values(?,?,?)");
	ps.setString(1, number);
	ps.setString(2, specialities);
	ps.setString(3, status);
	
	ps.executeUpdate();
	response.sendRedirect("findDoctor.jsp?msg=valid");
}
catch (Exception e){
	response.sendRedirect("findDoctor.jsp?msg=invalid");
}
%>