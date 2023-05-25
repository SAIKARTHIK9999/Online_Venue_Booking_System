<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../sass/pv_cnf.css">
    <link rel="shortcut icon" type="x-icon" href="../../images/transparent_logo.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
    
        <form name="form1" action="../../bookings/venue1/b_v1_4.jsp" onsubmit="return regValidation()" method="POST" >
        
        <center><h1>Conform it's you to book</h1></center>
        <table cellspacing="10px" cellpadding="25px">
            <tr>
                <td><label id="ulabel"for="username">User Name:*</label></td>
                <td><input type="text"  name="u_name" placeholder= "username" autocomplete="off" required></td>
            </tr>
            <tr>
                <td><label id="plabel"for="pwd">Enter Password:*</label></td>
                <td><input type="password"  name="upwd" placeholder= "enter password"  autocomplete="off" required></td>
            </tr>
            <tr>
                <td><label>Venue Date & Time:*</label></td>
                <td><input type="datetime-local" ></td>
            </tr>
        <script src="../../js/bootstrap.js"></script>
        
        <tr>
            <td><input class="btn btn-success" id="submit"type="submit" value="Submit"/></td>
        </tr>
        </table>
</body>
</html>