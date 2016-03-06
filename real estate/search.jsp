<%@ page import="java.sql.*,p1.*;" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Connection con=Dcon.getCon();
String city=request.getParameter("TextBox1");
String ptype=request.getParameter("DropDownList1");
String price=request.getParameter("DropDownList5");
out.print(city+"<br>");
out.print(ptype+"<br>");
out.print(price+"<br>");
PreparedStatement ps= con.prepareStatement("select * from PROPERTY where city like '%"+city+"%' and TypeOfProperty='"+ptype+"' and expectedamount between "+price+"");
ResultSet rs= ps.executeQuery();
out.write("<table>");
while(rs.next())
{
	out.write("<tr>");
	out.write("<td>"+rs.getString(1)+"</td>");
	out.write("<td>"+rs.getString(2)+"</td>");
	out.write("<td>"+rs.getString(3)+"</td>");
	out.write("<td>"+rs.getString(4)+"</td>");
	out.write("<td>"+rs.getString(5)+"</td>");
	out.write("<td>"+rs.getString(6)+"</td>");
	out.write("<td>"+rs.getString(7)+"</td>");
	out.write("</tr>");
}
out.write("</table>");
%>
</body>
</html>