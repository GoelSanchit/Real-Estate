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
<%@ page import="java.sql.*" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% out.println("JSP on cloud"); 
Connection con = null;
try {
	out.println("Loading Driver.....");
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	String jdbcurl =  "jdbc:db2://bluemix05.bluforcloud.com:50000/BLUDB"; // use ssljdbcurl to connect via SSL
	String user = "dash019259";
	String password = "IPJvz1jvdrdK";
	con = DriverManager.getConnection(jdbcurl, user,password);
	out.println("connection created....");
	//con.setAutoCommit(false);
     } catch (SQLException e) {
	out.println("SQL Exception: " + e);
	return;
             }
       catch (ClassNotFoundException e) {
	out.println("ClassNotFound Exception: " + e);
	return;
          }
Statement stmt = null;
String sqlStatement = "";
try {
	stmt = con.createStatement();
	
	
	String nm=request.getParameter("ctl00$ContentPlaceHolder2$TextBox1");
	String em=request.getParameter("ctl00$ContentPlaceHolder2$TextBox2");
	String ps=request.getParameter("ctl00$ContentPlaceHolder2$TextBox3");
	String cp=request.getParameter("ctl00$ContentPlaceHolder2$TextBox4");
	int x=Integer.parseInt(request.getParameter("ctl00$ContentPlaceHolder2$TextBox5"));
	String ad=request.getParameter("ctl00$ContentPlaceHolder2$TextBox6");
	sqlStatement = "insert into user values('"+nm+"','"+em+"','"+ps+"','"+cp+"',"+x+",'"+ad+"')";
	int f=stmt.executeUpdate(sqlStatement);
	if(f==1)
		{
		out.println("Record inserted....");
		response.sendRedirect("successfulyregister.html");
		}
	
	else
		out.println("Record not inserted....");
  } catch (SQLException e) {
	out.println("Error creating statement: " + e);
      }

%>
</body>
</html>