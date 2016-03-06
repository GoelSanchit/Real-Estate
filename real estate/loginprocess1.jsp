<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page session="false" %>
<%@ page import="java.sql.*,java.util.*"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="javax.servlet.http.HttpServlet"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
out.println("first...");
HttpSession session=request.getSession(false);
if(session!=null)
{

response.sendRedirect("index.html");

}
out.println("second...");

out.println("enter in......");
 try{
    Class.forName("com.ibm.db2.jcc.DB2Driver");
    out.println("driver loaded....");
	Connection con=DriverManager.getConnection("jdbc:db2://bluemix05.bluforcloud.com:50000/BLUDB","dash019259","IPJvz1jvdrdK");
	out.println("connected.......");
// Connection con=Dcon.getCon();
String name=request.getParameter("uname");
String pass=request.getParameter("upassword");
//String uname=(String)session.getAttribute("user");
out.print(name);
PreparedStatement ps= con.prepareStatement("select UNAME, PASSWORD from USER where UNAME=? and PASSWORD=?");
ps.setString(1,name);
ps.setString(2,pass);

ResultSet rs= ps.executeQuery();

if(rs.next()){
session=request.getSession(true);
session.setAttribute("user",name);
response.sendRedirect("user.jsp");
}else{
out.println("<b>Invalid User name or Password try again</b>");
RequestDispatcher rd= request.getRequestDispatcher("login.jsp");
rd.include(request,response);
}
 }catch(Exception e){out.println(e);}
%>

</body>
</html>