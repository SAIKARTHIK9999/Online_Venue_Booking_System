function regValidation()
{
    var name = document.forms["form1"]["u_name"].value;
    var pwd = document.forms["form1"]["upwd"].value;
    var cpwd =document.forms["form1"]["c_upwd"].value;
    var u_email = document.forms["form1"]["email"].value;
    var address = document.forms["form1"]["u_address"].value;
    var gender = document.forms["form1"]["gender"].value;
    
    if(document.form1.u_name.value==null || document.form1.u_name.value=="")
    {
    	alert("User Name can't be empty");
    	document.form1.u_name.focus();
    	return false;
    }
    else if(pwd==null || pwd=="")
    {
    	alert("Password can't be empty");
    	document.form1.upwd.focus();
    	return false;
    }
   else if(cpwd==null || cpwd=="")
   {
   		alert("Confirm Password can't be empty");
    	document.form1.c_upwd.focus();
    	return false;
   }
   else if(pwd != cpwd)
   {
        alert("Password did not match");
        document.form1.c_upwd.focus();
        document.form1.c_upwd.value="";
        return false;
   }
   else if(pwd.length<8)
   {
        alert("enter Password of 8 characters long");
        return false;
   }
   else if(pwd.search(/[0-9]/)==-1)
   {
        alert("enter atleast one number");
        return false;
   }
   else if(pwd.search(/[a-z]/)==-1)
   {
        alert("enter atleast one small letter");
        return false;
   }
   else if(pwd.search(/[A-Z]/)==-1)
   {
        alert("enter atleast one Capital letter");
        return false;
   }
   else if(pwd.search(/[!,@,$,%,^,&,*,(,),-,_,+,;,:,.]/)==-1)
   {
        alert("enter atleast one Special character");
        return false;
   }
   else if(u_email==null || u_email=="")
   {
   		alert("Email can not be empty");
   		document.form1.email.focus();
   		return false;
   }
   else if(address==null || address=="")
   {
   		alert("Address can not be empty");
   		document.form1.u_address.focus();
   		return false;
   }
   else if(document.getElementById("gender_male").checked==false && document.getElementById("gender_female").checked==false)
   {
   		alert("Gender can not be empty");
   		document.getElementById("gender_male").autofocus;
   		return false;
   }
   else
   {
   		document.write("Name: "+name);
   		document.write("<br>");
   		document.write("Password: "+pwd);
   		document.write("<br>");
   		document.write("Gender: "+gender);
   		document.write("<br>");
   		document.write("Address: "+address);
   		document.write("<br>");
   		return true;
   }
 }