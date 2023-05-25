<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thanks for booking</title>
    <link rel="stylesheet" href="../../css/bookings_style.css">
</head>
<body>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.*"%>

<%
String uname=request.getParameter("u_name");
String vname="venue1";
String vtime = "4hours";
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "root");
    Statement stmt=conn.createStatement();
    int i=stmt.executeUpdate("insert into venue_bookings(id,venue1,v1_time)values('"+uname+"','"+vname+"','"+vtime+"')");%>
    <h1><b><center>
    <%out.println("Thanks for booking");%>
    </center></b></h1>
    

<%}
catch(Exception e)
{
    out.print(e);
    e.printStackTrace();
}
%>
</body>
</html>
