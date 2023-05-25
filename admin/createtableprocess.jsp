<%@ page import="java.sql.*"%>
<html>
<head>
<title>Create Table</title>
<link rel="shortcut icon" type="x-icon" href="images/transparent_logo.webp">
</head>
<body>
<h1>
<%
String tname = request.getParameter("table_name");
String col1 = request.getParameter("column1");
String dt1 = request.getParameter("dt1");
String col2 = request.getParameter("column2");
String dt2 = request.getParameter("dt2");
String col3 = request.getParameter("column3");
String dt3 = request.getParameter("dt3");
String col4 = request.getParameter("column4");
String dt4 = request.getParameter("dt4");
String col5 = request.getParameter("column5");
String dt5 = request.getParameter("dt5");
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
    Statement stmt = conn.createStatement();
    String sql = "create table '"+tname+"'('"+col1+"' '"+dt1+"' primary key auto_increment, '"+col2+"' '"+dt2+"' not null)"; 
         stmt.executeUpdate(sql);
         System.out.println("Created '"+tname+"' table in database...");   	 
         conn.close(); 
}
catch (SQLException e)
{
         e.printStackTrace();
}
%>
<p>Created table1 in student database...</p>
 
    