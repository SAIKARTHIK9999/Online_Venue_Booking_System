<%@ page import="java.sql.*" %> 
<html>
<head>
<title>Login</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script type="text/javascript" src = "https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./sass/welstyle.css">
<link rel="shortcut icon" type="x-icon" href="images/nav_logo.webp">
<script type="text/javascript" src="./js/disable_back.js"></script>
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
	    PreparedStatement pstmt=con.prepareStatement("select * from registration_tbl");
      Statement stmt = con.createStatement();
    	ResultSet rs =stmt.executeQuery("select user_name, password from registration_tbl where user_name='"+uname+"' and password='"+pwd+"';"); 
      rs.next();
      String username = rs.getString("user_name");
      String dbpwd = rs.getString("password");
      if(uname.equals("admin") && pwd.equals("admin@OVBS"))
        {
            %>
            <center>
            <h1 >
            <br><br><br><br>
                    Welcome Admin
                <br><br><br><br>
                <a href="./admin/AdminProcess.jsp"><button type="button" class="btn btn-Dark">Admin Dashboard</button></a>
            </h1>
            </center>
            <%
        }
      else if(uname.equals(username) && pwd.equals(dbpwd))
      {
        %>
        <p id="usr">
        <script defer src="js\audio_visualizer.js"></script>
        <audio style="display: none;" id="audio" autoplay src="media/venue_voice.mp3" style="width: 720px;"></audio>
        <div id='audio_visualizer'><canvas id="canvas" width="720"></canvas></div>
        <%
         out.println("<center>Welcome: "+uname);%>
         </center>
         </p>
         <br>
         <p id="admin">Instructions to be followed :<br>
         1)Choose your venue<br>
         2)You have 10 venues to choose from<br>
         3)The venues are available all across Hyderabad<br>
         4)Choose your nearest one<br>
         </p>
         <a id="pooja"href="Venues_Dashboard.jsp"><button type="button" class="btn btn-Dark">Booking Dashboard</button></a>
    <% }
      else
      {
        out.println("<center><br><br><br><br>Invalid Password or User Name</center>");
        %>
        <br>
        <center>
          <a href="memberlogin.jsp"><button type="button" class="btn btn-outline-danger">Try Again</button></a>
        </center>
        <%
      }
  	}
  catch(SQLException e) {
    out.println("Login Credentials not found");
    %>
    <a style="margin-left: 225px;"id="log" href="Login.jsp"><button type="button" class="btn btn-info">Try again</button></a>
    <%
  }
%>
</h1>
</body>
</html>