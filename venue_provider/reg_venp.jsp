<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script type="text/javascript" src = "https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../sass/regstyle.css">
    <link rel="shortcut icon" type="x-icon" href="../images/nav_logo.webp">
    <script type="text/javascript" src="../js/validateForm.js"></script>
    <script defer src="../js/Full_Screen.js"></script>
</head>  
    <body> 
    <section id="navbar">
    <jsp:include page="./header.html" />
    </section>
        <form name="form1" action="venue_provider_reg_pr.jsp" onsubmit="return regValidation()" method="POST" >
        <center>
            <table cellpadding="10px">
                <tr>
                    <td><label for="username">VenueProvider Name:*</label></td>
                    <td><input type="text" id="name" name="u_name" placeholder= "user name" autocomplete="off" required/>
                    <img src="../media\mike.png" width="40px" onclick="startDictation('name')">
                    <script src="../js/Speech_Dictation.js"></script>
                    </td>
                </tr>
                <tr>
                    <td><label for="pwd">Enter Password:*</label></td>
                    <td><input type="password" id="upwd" name="upwd" placeholder= "enter password"  autocomplete="off" required/>
                    <img src="../media\mike.png" width="40px" onclick="startDictation('upwd')">
                    <script src="../js/Speech_Dictation.js"></script>
                    </td>
                </tr>
                <tr>
                    <td><label for="cpwd">Confirm Password:*</label></td>
                    <td><input type="password" id="c_upwd" name="c_upwd" placeholder= "confirm password" autocomplete="off"  required/>
                    <img src="../media\mike.png" width="40px" onclick="startDictation('c_upwd')">
                    <script src="../js/Speech_Dictation.js"></script>
                    </td>
                </tr>
                <tr>
                    <td><label for="email">Phone:*</label></td>
                    <td><input type="tel" id="phone" name="phone" placeholder= "phone number" autocomplete="off" required/>
                    <img src="../media\mike.png" width="40px" onclick="startDictation('email')">
                    <script src="../js/Speech_Dictation.js"></script>
                    </td>
                </tr>
                <tr>
                    <td><label for="email">Email:*</label></td>
                    <td><input type="email" id="email" name="email" placeholder= "e-mail" autocomplete="off" required/>
                    <img src="../media\mike.png" width="40px" onclick="startDictation('email')">
                    <script src="../js/Speech_Dictation.js"></script>
                    </td>
                </tr>
                <tr>
                <td><label for="address">Address:*</label></td>
                <td ><textarea id="u_address" name="u_address"  style="font-size:16px"  rows=4 cols=21  autocomplete="off" placeholder= "address..." required></textarea>
                <img src="../media\mike.png" width="40px" onclick="startDictation('u_address')">
                <script src="../js/Speech_Dictation.js"></script>
                </td>
                </tr>
                <tr>
                <div class="radio-group">
                        <td id="tdLabel"><label for="register_Gender" class="label">Gender:</label></td>
                        <td><label class="radio"><input type="radio" value="male" id="m" name="gender">&nbsp;<i id="icon"class="fa fa-male" aria-hidden="true"></i>&nbsp;male<span></span></label></td>
                        <td><label class="radio"><input type="radio" value="female" id="f" name="gender">&nbsp;<i id ="icon"class="fa fa-female" aria-hidden="true"></i>&nbsp;female<span></span></label></td>
                    </div>
            </div>
            </tr>
                <tr><td colspan="2"></tr>
                <tr>

                <td><div><input type="submit" id="register_0" class="btn btn-success" value="Register"/></div></td>
                <td><div><input type="reset" id="register_1" class="btn btn-danger" value="Reset"/></div></td>

                <td><a id="hm" href="../index.jsp"><button type="button" class="btn btn-primary">Home</button></a></td>
                <td><a id="log" href="./vplogin.jsp"><button type="button" class="btn btn-info">Login</button></a></td>
                
                </tr>
            </tr>
            </table>  
            </center>
    </form>
</body>  
</html>  