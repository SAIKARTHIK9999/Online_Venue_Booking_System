<%@page import="java.sql.*"%>
<%
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
%>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="shortcut icon" type="x-icon" href="images/transparent_logo.webp">
<link rel="stylesheet" href="css/display.css">
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
<h1>Retrieve data from database in jsp</h1>
<table cellspacing="20" cellpadding="10">
<tr id="mcells">
<td>id</td>
<td>user name</td>
<td>email</td>
<td>address</td>
</tr>
<%
try{
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
    stmt=conn.createStatement();
    String sql = ("select * from registration_tbl");
    rs = stmt.executeQuery(sql);
    while(rs.next())
    {
    %>
        <tr>
        <td><%=rs.getInt("id")%></td>
        <td><%=rs.getString("user_name") %></td>
        <td><%=rs.getString("email") %></td>
        <td><%=rs.getString("address") %></td>
        <td><a href="delete.jsp?id=<%=rs.getString("id")%>"><button type="button"class="btn btn-danger">Delete</button></a></td>
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