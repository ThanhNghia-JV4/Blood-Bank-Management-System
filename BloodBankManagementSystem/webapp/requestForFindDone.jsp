<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String number = request.getParameter("number");
try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("update finddoctor set status= 'completed' where number=?");
	System.out.print(number);
	ps.setString(1, number);
	ps.executeUpdate();
	response.sendRedirect("requestForFind.jsp");
}
catch(Exception e){
	response.sendRedirect("requestForFind.jsp");
}
%>