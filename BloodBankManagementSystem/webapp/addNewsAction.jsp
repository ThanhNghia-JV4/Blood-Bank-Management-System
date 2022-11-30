<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
	String id = request.getParameter("id");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	
	try{
		Connection con = ConnectionProvider.getCon();
		PreparedStatement ps = con.prepareStatement("insert into news values(?,?,?)");
		ps.setString(1, id);
		ps.setString(2, title);
		ps.setString(3, content);
		ps.executeUpdate();
		response.sendRedirect("addNews.jsp?msg=valid");
	}
	catch(Exception e){
		response.sendRedirect("addNews.jsp?msg=invalid");
	}
%>