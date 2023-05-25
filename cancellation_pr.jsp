<%@page import="java.sql.*"%>
<%
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
%>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="./sass/cncl_pr.css">
<link rel="shortcut icon" type="x-icon" href="media/icon.png">

</head>
<body>
<table cellspacing="20" cellpadding="10">
<tr id="mcells">
<td>slno</td>
<td>user name</td>
<td>venue1</td>
<td>time</td>
<td>venue2</td>
<td>time</td>
<td>venue3</td>
<td>time</td>
<td>venue4</td>
<td>time</td>
<td>venue5</td>
<td>time</td>
<td>venue6</td>
<td>time</td>
<td>venue7</td>
<td>time</td>
<td>venue8</td>
<td>time</td>
<td>venue9</td>
<td>time</td>
<td>venue10</td>
<td>vtime</td>
</tr>
<%
try{
     String uname=request.getParameter("u_name");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
    stmt=conn.createStatement();
    String sql = ("select * from venue_bookings where id='"+uname+"'");
    rs = stmt.executeQuery(sql);
    if(uname.equals(null))
    {
        out.println("You don't have any venues booked!");
    }
    else
    {
    while(rs.next())
    {
    %>
        <tr>
        <td><%=rs.getInt("slno")%></td>
        <td><%=rs.getString("id") %></td>
        <td><%=rs.getString("venue1") %></td>
        <td><%=rs.getString("v1_time") %></td>
        <td><%=rs.getString("venue2") %></td>
        <td><%=rs.getString("v2_time") %></td>
        <td><%=rs.getString("venue3") %></td>
        <td><%=rs.getString("v3_time") %></td>
        <td><%=rs.getString("venue4") %></td>
        <td><%=rs.getString("v4_time") %></td>
        <td><%=rs.getString("venue5") %></td>
        <td><%=rs.getString("v5_time") %></td>
        <td><%=rs.getString("venue6") %></td>
        <td><%=rs.getString("v6_time") %></td>
        <td><%=rs.getString("venue7") %></td>
        <td><%=rs.getString("v7_time") %></td>
        <td><%=rs.getString("venue8") %></td>
        <td><%=rs.getString("v8_time") %></td>
        <td><%=rs.getString("venue9") %></td>
        <td><%=rs.getString("v9_time") %></td>
        <td><%=rs.getString("venue10") %></td>
        <td><%=rs.getString("v10_time") %></td>
        <td><a href="delete.jsp?slno=<%=rs.getString("slno")%>"><button type="button"class="btn btn-outline-danger">cancell your venue!</button></a></td>
        </tr>
    <%
    }
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