<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.*"%>

<%
String uname=request.getParameter("u_name");
String vname="venue5";
String vtime = "10hours";
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "root");
    Statement stmt=conn.createStatement();
    int i=stmt.executeUpdate("insert into venue_bookings(id,venue5,v5_time)values('"+uname+"','"+vname+"','"+vtime+"')");%>
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
