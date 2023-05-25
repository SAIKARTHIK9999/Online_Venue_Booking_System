<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script type="text/javascript" src = "https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../sass/vlstyle.css">
	<link rel="shortcut icon" type="x-icon" href="../images/nav_logo.webp">
	<script defer src="../js/Full_Screen.js"></script>
</head>
	<body>
	<jsp:include page="./header.html" />
		<form action="venues_entry_process.jsp" method="POST" enctype="multipart/form-data">
	        	<table cellpadding="20px">
					<tr>
		        		<td><label for="txt_venuename">Venue Name:*</label></td>
		        		<td><input id="txt_vname" type="text" name="txt_vname" autocomplete="off" placeholder="Venue Name" required>
						<img src="../media/mike.png" width="40px" onclick="startDictation('txt_uname')">
						<script src="../js/Speech_Dictation.js"></script>
						</td>
					</tr>
                    <tr>
                        <td><label>upload your venue image:*</label></td>
                        <td><input name="image" value="image" type="file" id="real-file" hidden='hidden' required>
						<button type="button" class="btn btn-primary" id="custom-button"required>choose a file</button>
						<span id="custom-text">No file selected</span>
    					<script src="../ts/browse_files.js"></script>
                        </td>
                    </tr>
		        	<tr id="register_1">
           			 	<td width="100%"></td> 
            		 	<td colspan="2"><div><input type="submit" class="btn btn-success" value="Submit"/></div></td>   
            			<td><input type="reset" class="btn btn-danger" value="Reset"><br></td>
       				 </tr>
	        	</table>
		</form>
	</body>
</html>
