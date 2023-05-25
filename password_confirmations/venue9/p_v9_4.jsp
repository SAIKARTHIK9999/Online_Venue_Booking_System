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
    <section id="log_in">
        <form name="form1" action="../../bookings/venue9/b_v9_4.jsp" onsubmit="return regValidation()" method="POST" >
        
        <center><h1>Conform it's you to book</h1></center>
        <label id="ulabel"for="username">User Name:*</label>
        <input type="text" id="name" name="u_name" placeholder= "username" autocomplete="off" required/>
        <br>
        <label id="plabel"for="pwd">Enter Password:*</label>
        <input type="password" id="upwd" name="upwd" placeholder= "enter password"  autocomplete="off" required/>
        <br>
        <input class="btn btn-success" id="submit"type="submit" value="Submit"/>
    </section>
</body>
</html>