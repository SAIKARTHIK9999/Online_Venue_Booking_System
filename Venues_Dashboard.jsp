<!DOCTYPE html>
<html lang="en">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*,java.util.*"%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Venues</title>
    <link rel="shortcut icon" type="x-icon" href="images/nav_logo.webp">
    <link rel="stylesheet" href="./sass/Venues_Dashboard.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script type="text/javascript" src = "https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="./js/disable_back.js"></script>
</head>
<body>
     <jsp:include page="./flowers.html" />
     <a id="logout"href="./memberlogin.jsp"><button class="btn btn-outline-danger">Log out</button></a>
    <h1>Online Venues</h1>
    <div class="container">
      <section class="venue" id="venue1">
        <img src="media/Venues/venue1.png">
        <center><h4>Venue1</h4>
            <h5>Venue Time (in hours)</h5></center>
            <div id="time" class="btn-group" role="group" aria-label="Basic mixed styles example">
                <a href="password_confirmations\venue1\p_v1_4.jsp"><button 
                type="button" class="btn btn-danger">4</button></a>
                <a href="password_confirmations\venue1\p_v1_6.jsp">
                <button type="button" class="btn btn-warning">6</button></a>
                <a href="password_confirmations\venue1\p_v1_8.jsp">
                <button type="button" class="btn btn-info">8</button></a>
                 <a href="password_confirmations\venue1\p_v1_10.jsp">
                <button type="button" class="btn btn-success">10</button></a>
              </div>
    </section>

    <section class="venue" id="venue2">
        <img src="media/Venues/venue2.png">
        <center><h4>Venue2</h4>
            <h5>Venue Time (in hours)</h5></center>
            <div id="time" class="btn-group" role="group" aria-label="Basic mixed styles example">
                <a href="password_confirmations\venue2\p_v2_4.jsp"><button 
                type="button" class="btn btn-danger">4</button></a>
                <a href="password_confirmations\venue2\p_v2_6.jsp">
                <button type="button" class="btn btn-warning">6</button></a>
                <a href="password_confirmations\venue2\p_v2_8.jsp">
                <button type="button" class="btn btn-info">8</button></a>
                 <a href="password_confirmations\venue2\p_v2_10.jsp">
                <button type="button" class="btn btn-success">10</button></a>
              </div>
    

    </section>

    <section class="venue" id="venue3">
        <img src="media/Venues/venue3.png">
        <center><h4>Venue3</h4>
            <h5>Venue Time (in hours)</h5></center>
            <div id="time" class="btn-group" role="group" aria-label="Basic mixed styles example">
                <a href="password_confirmations\venue3\p_v3_4.jsp"><button 
                type="button" class="btn btn-danger">4</button></a>
                <a href="password_confirmations\venue3\p_v3_6.jsp">
                <button type="button" class="btn btn-warning">6</button></a>
                <a href="password_confirmations\venue3\p_v3_8.jsp">
                <button type="button" class="btn btn-info">8</button></a>
                 <a href="password_confirmations\venue3\p_v3_10.jsp">
                <button type="button" class="btn btn-success">10</button></a>
              </div>
    

    </section>

    <section class="venue" id="venue4">
        <img src="media/Venues/venue4.png">
        <center><h4>Venue4</h4>
            <h5>Venue Time (in hours)</h5></center>
          <div id="time" class="btn-group" role="group" aria-label="Basic mixed styles example">
                <a href="password_confirmations\venue4\p_v4_4.jsp"><button 
                type="button" class="btn btn-danger">4</button></a>
                <a href="password_confirmations\venue4\p_v4_6.jsp">
                <button type="button" class="btn btn-warning">6</button></a>
                <a href="password_confirmations\venue4\p_v4_8.jsp">
                <button type="button" class="btn btn-info">8</button></a>
                 <a href="password_confirmations\venue4\p_v4_10.jsp">
                <button type="button" class="btn btn-success">10</button></a>
              </div>
    

    </section>

    <section class="venue" id="venue5">
        <img src="media/Venues/venue5.png">
        <center><h4>Venue5</h4>
            <h5>Venue Time (in hours)</h5></center>
            <div id="time" class="btn-group" role="group" aria-label="Basic mixed styles example">
                <a href="password_confirmations\venue5\p_v5_4.jsp"><button 
                type="button" class="btn btn-danger">4</button></a>
                <a href="password_confirmations\venue5\p_v5_6.jsp">
                <button type="button" class="btn btn-warning">6</button></a>
                <a href="password_confirmations\venue5\p_v5_8.jsp">
                <button type="button" class="btn btn-info">8</button></a>
                 <a href="password_confirmations\venue5\p_v5_10.jsp">
                <button type="button" class="btn btn-success">10</button></a>
              </div>
    

    </section>

    <section class="venue" id="venue6">
        <img src="media/Venues/venue6.png">
        <center><h4>Venue6</h4>
            <h5>Venue Time (in hours)</h5></center>
            <div id="time" class="btn-group" role="group" aria-label="Basic mixed styles example">
                <a href="password_confirmations\venue6\p_v6_4.jsp"><button 
                type="button" class="btn btn-danger">4</button></a>
                <a href="password_confirmations\venue6\p_v6_6.jsp">
                <button type="button" class="btn btn-warning">6</button></a>
                <a href="password_confirmations\venue6\p_v6_8.jsp">
                <button type="button" class="btn btn-info">8</button></a>
                 <a href="password_confirmations\venue6\p_v6_10.jsp">
                <button type="button" class="btn btn-success">10</button></a>
              </div>
    

    </section>

    <section class="venue" id="venue7">
        <img src="media/Venues/venue7.png">
        <center><h4>Venue7</h4>
            <h5>Venue Time (in hours)</h5></center>
            <div id="time" class="btn-group" role="group" aria-label="Basic mixed styles example">
                <a href="password_confirmations\venue7\p_v7_4.jsp"><button 
                type="button" class="btn btn-danger">4</button></a>
                <a href="password_confirmations\venue7\p_v7_6.jsp">
                <button type="button" class="btn btn-warning">6</button></a>
                <a href="password_confirmations\venue7\p_v7_8.jsp">
                <button type="button" class="btn btn-info">8</button></a>
                 <a href="password_confirmations\venue7\p_v7_10.jsp">
                <button type="button" class="btn btn-success">10</button></a>
              </div>
    

    </section>

    <section class="venue" id="venue8">
        <img src="media/Venues/venue8.png">
        <center><h4>Venue8</h4>
            <h5>Venue Time (in hours)</h5></center>
            <div id="time" class="btn-group" role="group" aria-label="Basic mixed styles example">
                <a href="password_confirmations\venue8\p_v8_4.jsp"><button 
                type="button" class="btn btn-danger">4</button></a>
                <a href="password_confirmations\venue8\p_v8_6.jsp">
                <button type="button" class="btn btn-warning">6</button></a>
                <a href="password_confirmations\venue8\p_v8_8.jsp">
                <button type="button" class="btn btn-info">8</button></a>
                 <a href="password_confirmations\venue8\p_v8_10.jsp">
                <button type="button" class="btn btn-success">10</button></a>
              </div>
    

    </section>

    <section class="venue" id="venue9">
        <img src="media/Venues/venue9.png">
        <center><h4>Venue9</h4>
            <h5>Venue Time (in hours)</h5></center>
            <div id="time" class="btn-group" role="group" aria-label="Basic mixed styles example">
                <a href="password_confirmations\venue9\p_v9_4.jsp"><button 
                type="button" class="btn btn-danger">4</button></a>
                <a href="password_confirmations\venue9\p_v9_6.jsp">
                <button type="button" class="btn btn-warning">6</button></a>
                <a href="password_confirmations\venue9\p_v9_8.jsp">
                <button type="button" class="btn btn-info">8</button></a>
                 <a href="password_confirmations\venue9\p_v9_10.jsp">
                <button type="button" class="btn btn-success">10</button></a>
              </div>

    </section>

    <section class="venue" id="venue10">
        <img src="media/Venues/venue10.png">
        <center><h4>Venue10</h4>
            <h5>Venue Time (in hours)</h5></center>
            <div id="time" class="btn-group" role="group" aria-label="Basic mixed styles example">
                <a href="password_confirmations\venue10\p_v10_4.jsp"><button 
                type="button" class="btn btn-danger">4</button></a>
                <a href="password_confirmations\venue10\p_v10_6.jsp">
                <button type="button" class="btn btn-warning">6</button></a>
                <a href="password_confirmations\venue10\p_v10_8.jsp">
                <button type="button" class="btn btn-info">8</button></a>
                 <a href="password_confirmations\venue10\p_v10_10.jsp">
                <button type="button" class="btn btn-success">10</button></a>
              </div>
    </section>
</div>
</body>
</html>