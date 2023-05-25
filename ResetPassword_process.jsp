<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="style.css">
	<title>Forgot Password</title>
    <link rel="shortcut icon" type="x-icon" href="images/nav_logo.webp">
</head>
<body>

<%@ page import="java.util.*"%>
<%@ page import="javax.mail.*"%>
<%@ page import="javax.mail.internet.*"%>

<%

    String to = request.getParameter("email");

    String from = "karthikmumadi576@gmail.com";
    final String username = "AI with karthik";
    final String password = "789383588194945110469441223913123456@!";

    String host = "smtp.gmail.com";

    Properties props = new Properties();
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.starttls.enable", "true");
    props.put("mail.smtp.host", host);
    props.put("mail.smtp.port", "587");

    Session session1 = Session.getInstance(props, 
    new javax.mail.Authenticator(){
            protected PasswordAuthentication getPasswordAuthentication(){
                return new PasswordAuthentication(username, password);
        }
    });

    try
    {
        Message message = new MimeMessage(session1);

        message.setFrom(new InternetAddress(from));

        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));

        message.setSubject("Testing Subject");

        message.setText("Hi, test message " + "email using JavaMailAPI ");

        Transport.send(message);

    }
    catch (MessagingException e){
       throw new RuntimeException(e);
    }
    out.println("Sent message successfully...");
%>

</body>
</html>