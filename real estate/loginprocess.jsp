<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page session="false" %>
<%@page import="p1.Dcon" %>
<%@page import="java.sql.Connection"   %>
<%@page import="java.sql.PreparedStatement"   %>
<%@page import="java.sql.ResultSet"   %>
<%@page import="javax.servlet.http.HttpServlet"   %>
<%@page import="javax.servlet.http.HttpServletRequest"   %>
<%@page import="javax.servlet.http.HttpServletResponse"   %>

<%HttpSession session=request.getSession(false);
if(session!=null)
{

response.sendRedirect("index.html");

}

 %>
 <%
 
	Connection con=Dcon.getCon();
String name=request.getParameter("name");
String pass=request.getParameter("password");
String uname=(String)session.getAttribute("user");
out.print(name);
PreparedStatement ps= con.prepareStatement("select * from USER where UNAME=? and PASSWORD=?");
ps.setString(1,name);
ps.setString(2,pass);

ResultSet rs= ps.executeQuery();

if(rs.next()){
session=request.getSession(true);
session.setAttribute("user",name);
response.sendRedirect("user.jsp");
}else{
out.println("<b>Invalid User name or Password try again</b>");
RequestDispatcher rd= request.getRequestDispatcher("login.html");
rd.include(request,response);
}
%>