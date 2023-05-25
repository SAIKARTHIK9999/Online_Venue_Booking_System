<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script type="text/javascript" src = "https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="./sass/login.css">
	<link rel="shortcut icon" type="x-icon" href="images/nav_logo.webp">
	<script defer src="js/Full_Screen.js"></script>
	<script type="text/javascript" src="./js/disable_back.js"></script>
</head>
	<body>
	<jsp:include page="./menu.html" />
		<form name="form1" action="ResetPassword_process.jsp" method="POST">
		<section>
	        	<table cellpadding="20px">
	        		<tr>
		        		<td><label for="txt_username">enter your email:*</label></td>
		        		<td><input type="email" id="email" name="email" placeholder= "e-mail" autocomplete="off"/>
                        <img src="media\mike.png" width="40px" onclick="startDictation('email')">
						</td>
						</tr>
		        	<tr id="register_1">
           			 	<td width="100%"></td> 
            		 	<td colspan="2"><div><input type="submit"  class="btn btn-success" value="Submit"/></div></td>   
            			<td><input type="reset" class="btn btn-danger" value="Reset"><br></td>
       				 </tr>
	        	</table>
			</section>
			</div>
	        </fieldset>
			</form>
		</body>
</html>
