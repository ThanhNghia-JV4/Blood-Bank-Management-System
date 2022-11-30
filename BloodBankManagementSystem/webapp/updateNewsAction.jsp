<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<% 
String id = request.getParameter("id");
String title = request.getParameter("title");
String content = request.getParameter("content");

try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("update news set title=?,content=? where id=?");
	ps.setString(1, title);
	ps.setString(2, content);
	ps.setString(3, id);
	ps.executeUpdate();
	response.sendRedirect("manageNews.jsp?msg=valid");
}
catch(Exception e){
	response.sendRedirect("manageNews.jsp?msg=invalid");
}

%>