<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>registration page</title>
          <link href="style.css" rel="stylesheet" type="text/css" />
     <script type="text/javascript" src="bbregister_validate.js"></script>
         <script type="text/javascript">
function checkUser()
{
    var req;
    try
    {
        req=new XMLHttpRequest();

    }
        catch(e)
        {
            try
            {

             req=new ActiveX0bject("msxml2.XMLHttp");
             }
             catch(e)
             {
                 try{
                     req=new ActiveX0bject("MicrosoftXMLHttp");
                 }
                 catch(e){
                 alert("browser doesn't recognise ajax");
                 return false;
             }
             }
           }
     req.onreadystatechange=function()
     {
         if(req.readyState==4)
         {
           document.getElementById("display").innerHTML=req.responseText;
         }
     }
     var url="bbvalid.jsp?t3="+document.f4.t3.value;
     req.open("GET",url,true);
     req.send(null);
 }
 function blank()
 {
    document.getElementById("display").innerHTML="";
 }
 </script>
    <style>
        /*#content{background-color: white;}*/     
        

        
       #content {
	background-image:url(images/3bbreg.jpeg);
        background-color: white;
        background-size:100% 100%;
	width:786px;

     </style>
    </head>
    <body bgcolor="lightblue">
        <!--  <input type="button" value="About Blood" name="b1"/>
            <input type="button" value="Edit Profile" name="b2"/>
            <input type="button" value="Search" name="b3"/>
            <input type="button" value="Home" name="b4"/><br>
           -->
           <div id="container">
	<div id="header">
		<div id="logo_w1">Blood Donor</div>
		<div id="logo_w2">Symbiosis</div>
		<div id="header_text">
			<p>Donate Blood, Save Life</p>

		</div>
        <ul >
            <li><a href="admin.jsp">Back</a></li>
		</ul>
        </div>
	<div id="content">
		<div id="center">
        <form name="f4" onsubmit="bbRegistrationValidation()">
         
            <a><center><h2> BLOODBANK REGISTRATION</h2></center></a>
            <p><h2>Sign Up</h2></p>
             <p>
                BloodBank name:&nbsp&nbsp&nbsp&nbsp<input type="text" name="t1" value="" /><br></p>

            
            <label for="t3">User Name</label>: &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp<input type="text" name="t3" onblur="checkUser()" onselect="blank()"/><span id="display"></span><br><br>
                
            Password         :&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp<input type="password" name="t4" /><br><br>
            Confirm Password :&nbsp<input type="password" name="t5" /><br><br>
            E-Mail           : &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp<input type="text" name="t6" /><br><br>
            
            


<p>
            PhoneNo:&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp<input type="text" name="t7" value=""/><br></p> 
            <p>Address:&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp<textarea name="m1" rows="4" cols="30"></textarea><br>
            </p>
             <p>
            Area:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="d4"><br>
            <br></p>
       
            


           
                 
 
<p>
             District:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<select name="d3">
						<option value="">--Select--</option>
						<option value="Chittor">Chittor</option>
						<option value="Bhojpur">Chittor</option>
						<option value="Raipur">Raipur</option>
						<option value="Ahmedabad">Ahmedabad</option>
						<option value="Ambala">Ambala</option>
						<option value="Shimla">Shimla</option>
						<option value="Jamshedpur">Jamshedpur</option>
						<option value="Bengaluru">Bengaluru</option>
						<option value="Nalappuram">Nalappuram</option>
						<option value="Bhopal">Bhopal</option>
						<option value="Mumbai">Mumbai</option>
						<option value="Cuttack">Cuttac</option>
						<option value="Amritsar">Amritsar</option>
						<option value="Jaipur">Jaipur</option>
						<option value="Gangtok">Gangtok</option>
						<option value="Chennai">Chennai</option>
						<option value="Hyderabad">Hyderabad</option>
						<option value="Kanpur">Kanpur</option>
						<option value="Kolkata">Kolkata</option>
						<option value="Devangar">Devangar</option>
						<option value="Udupi">Udupi</option>
						<option value="Mysore">Mysore</option>
					</select>
                            <br>
                            </p>
                           
                            <p>
            Zip:&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp&nbsp&nbsp<input type="text" name="t2" value=" "/><br>
            </p>
            <p><input type="submit" name="s1" value="create account" />
            </p>
        </form>
        </div>



		<div id="footerline"></div>
	</div>

	<div id="footer"> Blood Donor Symbiosis.  All rights reserved.</div>
</div>

    </body>
</html>
