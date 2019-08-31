<%@page import="db.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<%@ page import="java.sql.*" %>
<%@page import="db.DBConnection" %>
<%@page import="db.DbUtility" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Connection con=DBConnection.getDBInstance();
PreparedStatement stmt=con.prepareStatement("select * from `springjdbc`.employees;");
ResultSet rs=stmt.executeQuery();
if(rs!=null) {
	
	out.print("<table><tr><th>Emp ID</th><th>Age</th><th>First Name</th><th>Last Name</th></tr><br>");
	out.print(DbUtility.htmlTableRS(rs));
}
%>


</body>
</html>