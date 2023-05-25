<html>
<head>
<link rel="shortcut icon" type="x-icon" href="images/transparent_logo.webp">
<title>
Creating Table
</title>
</head>
<body>
    <form name="form1" action="createtableprocess.jsp" method="POST" >
    <table>
        <tr>
            <td>Table name</td>
            <td><input type="text" name="table_name" required></td>
        </tr>
        <tr>
            <td>Column1</td>
            <td><input type="text" name="column1" required></td>
            <td><label for="cars">Choose a Datatype:</label>
                <select required name="dt1" id="dt1">
                <option value="INT(20)">INT</option>
                <option value="VARCHAR(45)">VARCHAR</option>
                <option value="BLOB">BLOB</option>
                <option value="DATE">DATE</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Column2</td>
            <td><input type="text" name="column2" required></td>
            <td><label for="cars">Choose a Datatype:</label>
                <select required name="dt2" id="dt2">
                <option value="INT(20)">INT</option>
                <option value="VARCHAR(45)">VARCHAR</option>
                <option value="BLOB">BLOB</option>
                <option value="DATE">DATE</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Column3</td>
            <td><input type="text" name="column3" required></td>
            <td><label for="cars">Choose a Datatype:</label>
                <select required name="dt3" id="dt3">
                <option value="INT(20)">INT</option>
                <option value="VARCHAR(45)">VARCHAR</option>
                <option value="BLOB">BLOB</option>
                <option value="DATE">DATE</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Column4</td>
            <td><input type="text" name="column4" required></td>
            <td><label for="cars">Choose a Datatype:</label>
                <select required name="dt1" id="dt1">
                <option value="INT(20)">INT</option>
                <option value="VARCHAR(45)">VARCHAR</option>
                <option value="BLOB">BLOB</option>
                <option value="DATE">DATE</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Column5</td>
            <td><input type="text" name="column5" required></td>
            <td><label for="cars">Choose a Datatype:</label>
                <select required name="dt5" id="dt5">
                <option value="INT(20)">INT</option>
                <option value="VARCHAR(45)">VARCHAR</option>
                <option value="BLOB">BLOB</option>
                <option value="DATE">DATE</option>
                </select>
            </td>
        </tr>
        <tr>
            <td><input type="submit" value="Create Table"></td>
        </tr>
    </table>
</body>
</html>