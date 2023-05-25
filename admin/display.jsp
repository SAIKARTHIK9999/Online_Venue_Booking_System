<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="shortcut icon" type="x-icon" href="images/transparent_logo.webp">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.*"%>
<%
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
%>
<html>
<head>
    <style>
        body 
        {
            background: url("../images/bg.svg");
            background-repeat: no-repeat;
            background-size: 100% 355%;
        }
    </style>
</head>
<body>
<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Retrieve data from database in JSP</h1>
<!--<link rel="stylesheet" href="css/style.css">-->
<table cellspacing="20" cellpadding="10">
<tr id="mcells">
<td >id</td>
<td>user name</td>
<td>password</td>
<td>email</td>
<td>address</td>
<td>gender</td>
<td>course java</td>
<td>course python</td>
<td>course android</td>
<td>course JSP</td>
</tr>
<%
try{
    conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
    stmt=conn.createStatement();
    String sql = ("select * from registration_tbl");
    rs= stmt.executeQuery(sql);
    while(rs.next()){
    %>
        <tr>
        <td><%=rs.getString("id") %></td>
        <td><%=rs.getString("user_name") %></td>
        <td><%=rs.getString("password") %></td>
        <td><%=rs.getString("email") %></td>
        <td><%=rs.getString("address") %></td>
        <td><%=rs.getString("gender") %></td>
        <td><%=rs.getString("course_java") %></td>
        <td><%=rs.getString("course_android") %></td>
        <td><%=rs.getString("course_python") %></td>
        <td><%=rs.getString("course_jsp") %></td>
        <td><a href="update.jsp?id=<%=rs.getString("id")%>">update</a></td>
        </tr>
    <%
    }
conn.close();
} 
catch (Exception e)
{
    e.printStackTrace();
}
%>
</table>
</body>
</html>