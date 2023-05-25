<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
<head>
<link rel="shortcut icon" type="x-icon" href="images/transparent_logo.webp">
<style>
body {
    font-size: 100px;
    margin-left: 450px;
    margin-top: 400px;
}
</style>
</head>
</html>
<%
String id=request.getParameter("id");
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
    Statement st=conn.createStatement();
    int i=st.executeUpdate("DELETE FROM registration_tbl WHERE id="+id);
    out.println("Data Deleted Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>