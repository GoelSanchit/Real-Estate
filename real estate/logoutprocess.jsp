<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page session="false" %>
<%HttpSession session=request.getSession(false);
if(session==null)
response.sendRedirect("user.jsp");
else
{
	session.invalidate();
	response.sendRedirect("logout.html");
}
%>