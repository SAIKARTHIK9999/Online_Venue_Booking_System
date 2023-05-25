<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <script src="js/bootstrap.js"></script>
    <title>Registration</title>
    <link rel="stylesheet" type="text/css" href="css/Rstyle.css">
    <link rel="shortcut icon" type="x-icon" href="images/nav_logo.webp">
</head>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.*"%>

<%
String user_name=request.getParameter("u_name");
String pwd=request.getParameter("upwd");
String phone=request.getParameter("phone");
String email=request.getParameter("email");
String address=request.getParameter("u_address");
String gender=request.getParameter("gender");
    

try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "root");
    Statement stmt=conn.createStatement();
    int i=stmt.executeUpdate("insert into registration_tbl(user_name, password, phone, email, address, gender)values('"+user_name+"','"+pwd+"','"+phone+"','"+email+"','"+address+"','"+gender+"')");%>


    <h1><b><center>
    <%out.println("Data is successfully inserted!");%>
    <p>now you can login with your credentials</p>
    <a id="log" href="memberlogin.jsp"><button type="button" class="btn btn-warning">Login</button></a>
    </center></b></h1>
    

<%}
catch(Exception e)
{
    out.print(e);
    e.printStackTrace();
}
%>
