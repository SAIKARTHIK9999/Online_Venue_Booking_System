<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.io.*, java.sql.*, java.util.*"%>
<%
String v_name = request.getParameter("txt_vname");
String saveFile = "";
String contentType = request.getContentType();

    if((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0))
    {
        DataInputStream in = new DataInputStream(request.getInputStream());
        int formatDataLength = request.getContentLength();
        byte dataBytes[] = new byte[formatDataLength];
        int byteRead = 0;
        int totalBytesRead = 0;
        while(totalBytesRead < formatDataLength)
        {
            byteRead = in.read(dataBytes, totalBytesRead, formatDataLength);
            totalBytesRead += byteRead;
        }
        String file = new String(dataBytes);
        saveFile = file.substring(file.indexOf("filename=\"") + 10);
        saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
        saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));
        int lastIndex = contentType.lastIndexOf("=");
        String boundary = contentType.substring(lastIndex + 1, contentType.length());
        int pos;
        pos = file.indexOf("filename=\"");
        pos = file.indexOf("\n", pos) + 1;
        pos = file.indexOf("\n", pos) + 1;
        pos = file.indexOf("\n", pos) + 1;
        int boundaryLocation = file.indexOf(boundary, pos) - 4;
        int startPos = ((file.substring(0, pos)).getBytes()).length;
        int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
        File ff = new File("C:\\Program Files\\Apache Software Foundation\\Tomcat 10.0\\webapps\\OVBS\\images\\upload\\" +saveFile);
        FileOutputStream fileOut = new FileOutputStream(ff);
        fileOut.write(dataBytes, startPos, (endPos - startPos));
        fileOut.flush();
        fileOut.close();

            try
            {
                PreparedStatement pstmt = null;
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "root");
                pstmt = conn.prepareStatement("insert into images_upload(venueName, imageFile) values(?, ?)");
                pstmt.setString(1, v_name);
                pstmt.setString(2, ff.getPath());
                int s = pstmt.executeUpdate();
                if(s>0)
                {
                    out.println("<center><h1>Venue Uploaded Successfully !</h1></center>");
                }
                else
                {
                    out.println("Error!");
                }
            }

            catch(Exception e)
            {
                out.println(e);
            }

    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../sass/vlud2.css">
    <link rel="shortcut icon" type="x-icon" href="../images/nav_logo.webp">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<title>venue Upload</title>
</head>
<body>
    <form name="form4" action="venue_name_entry.jsp" method="POST" >
    <table>
	    <tr>
		    <td><label for="txt_venuename">Re-enter venue name to conform:*</label></td>
		    <td><input id="txt_vname" type="text" name="venueName" autocomplete="off" placeholder="Venue Name" required>
			<img src="../media/mike.png" width="40px" onclick="startDictation('txt_uname')">
			<script src="../js/Speech_Dictation.js"></script>
		    </td>
        <tr id="register_1">
        	<td width="100%"></td> 
          	<td colspan="2"><div><input type="submit" class="btn btn-success" value="Submit"/></div></td>   
           	<td><input type="reset" class="btn btn-danger" value="Reset"><br></td>
		</tr>
    </table>
</body>
</html>