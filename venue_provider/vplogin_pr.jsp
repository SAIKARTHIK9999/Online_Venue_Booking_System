<%@ page import="java.sql.*" %> 
<html>
<head>
<title>Login Process</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script type="text/javascript" src = "https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../sass/welstyle.css">
<link rel="shortcut icon" type="x-icon" href="../images/nav_logo.webp">

</head>
<body>
  <form name="form2" action="Venues_Dashboard.jsp" method="POST">
<h1>
<%
  String uname=request.getParameter("txt_uname");
  String pwd=request.getParameter("txt_pwd");
	try 
	{
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
	    PreparedStatement pstmt=con.prepareStatement("select * from venue_providers");
      Statement stmt = con.createStatement();
    	ResultSet rs =stmt.executeQuery("select user_name, password from venue_providers where user_name='"+uname+"' and password='"+pwd+"';"); 
      rs.next();
      String username = rs.getString("user_name");
      String dbpwd = rs.getString("password");
      if(uname.equals("admin") && pwd.equals("admin@OVBS"))
        {
            %>
            <h1>
            Welcome Admin
            <a href="AdminProcess.jsp"><button type="button" class="btn btn-Dark">Admin Dashboard</button></a>
            </h1>
            <%
        }
      else if(uname.equals(username) && pwd.equals(dbpwd))
      {
         out.println("Welcome: "+uname);%>
         <br><br><br>
         <a href="Venues_entry.jsp"><button type="button" class="btn btn-Dark">Enter venue details</button></a>
    <% }
      else
      {
        out.println("Invalid Password or User Name");
      }
    
  	}
  catch(SQLException e) {
    out.println("Login Credentials not found");
    %>
    <a style="margin-left: 225px;"id="log" href="vplogin.jsp"><button type="button" class="btn btn-info">Try again</button></a>
    <%
  }
%>
</h1>
</body>
</html>