<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
<head>
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
String slno = request.getParameter("slno");
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
        Statement st=conn.createStatement();
        int i=st.executeUpdate("DELETE FROM venue_bookings WHERE slno="+slno);
        out.println("Data Deleted Successfully!");
    }
    catch(SQLException e)
    {
        System.out.print(e);
        e.printStackTrace();
    }
%>