<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <script src="js/bootstrap.js"></script>
    <title>RegistrationProcess</title>
    <link rel="stylesheet" type="text/css" href="css/Rstyle.css">
    <link rel="shortcut icon" type="x-icon" href="../images/nav_logo.webp">
</head>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.*"%>

<%
String venue_name=request.getParameter("venueName");

try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "root");
    Statement stmt=conn.createStatement();
    int i=stmt.executeUpdate("insert into images_upload(venueName)values('"+venue_name+"')");
}
catch(Exception e)
{
    out.print(e);
    e.printStackTrace();
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../sass/venUpld.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<title>venue Uploader</title>
</head>
<body>
    <section>
        <h1>venue will be uploaded within 1-2 days you will be notified in your E-mail </h1>
        <br>
        <br>
        <br>
        <br>
    </section>
</body>
</html>