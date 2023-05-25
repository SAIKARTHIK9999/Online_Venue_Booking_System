<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>cancellation</title>
    <link rel="shortcut icon" type="x-icon" href="images/nav_logo.webp">
    <link rel="stylesheet" href="./sass/cncll.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
    
        <form name="form1" action="cancellation_pr.jsp" onsubmit="return regValidation()" method="POST" >
        
        <center><h1>Conform it's you to cancell</h1></center>
        <table cellspacing="10px" cellpadding="25px">
            <tr>
                <td><label id="ulabel"for="username">User Name:*</label></td>
                <td><input type="text"  name="u_name" placeholder= "username" autocomplete="off" required></td>
            </tr>
            <tr>
                <td><label id="plabel"for="pwd">Password:*</label></td>
                <td><input type="password"  name="upwd" placeholder= "enter password"  autocomplete="off" required></td>
            </tr>
            <script type="text/javascript" src = "https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
        
        <tr>
            <td><input class="btn btn-success" id="submit"type="submit" value="Submit"/></td>
        </tr>
        </table>
</body>
</html>