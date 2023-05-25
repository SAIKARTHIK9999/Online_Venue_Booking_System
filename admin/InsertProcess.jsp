<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String first_name=request.getParameter("first_name");
String last_name=request.getParameter("last_name");
String city_name=request.getParameter("city_name");
String email=request.getParameter("email");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "root");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into users(first_name,last_name,city_name,email)values('"+first_name+"','"+last_name+"','"+city_name+"','"+email+"')");
}
catch(Exception e)
{
out.print(e);
e.printStackTrace();
}
%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="shortcut icon" type="x-icon" href="images/transparent_logo.webp">
</head>
<body>
    <p style="font-family:monospace,sans-serif;
    font-size:60px;
    color:green;
    border: none;
    appearance: none;
    background: #f2f2f2;
    padding: 12px;
    margin:10px;
    border-radius: 20px;
    width: 450px;
    outline: none;
    background: rgba(255,255,255,.2);
    box-shadow: 0 5px 15px rgba(0.0.0,1.75);
    cursor: pointer;">Data is successfully inserted!</p>
</body>
</html>