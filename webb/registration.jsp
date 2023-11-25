<%-- 
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<html>
    <head>
        <title> REGISTRATION PAGE</title>
        <link href="style.css" rel="stylesheet" type="text/css" />
           <script type="text/javascript" src="register_validate.js"></script>
           <script type="text/javascript" src="calendarDateInput.js"></script>
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
     var url="valid.jsp?t1="+document.f1.t1.value;
     req.open("GET",url,true);
     req.send(null);
 }
 function blank()
 {
    document.getElementById("display").innerHTML="";
 }

 //function checkPwd(){
   //  if(document.f1.t1.value==document.f1.t2.value){
   //      alert("Password must be different from username");
   //      document.f1.t2.focus();
  //       document.f1.t2.value="";
  //   }
// }
// function pwdMatch(){
    //  if(!(document.f1.t2.value==document.f1.t3.value)){
    //      alert(" password not matching! please Reenter the same password");
   //        document.f1.t3.focus();
    //     document.f1.t3.value="";
    //  }
// }
 // function regvalidate()
    //        {
//
       //         if(document.f1.t1.value=="" || document.f1.t2.value=="" || document.f1.t4.value=="" ||document.f1.t5.value=="" || document.f1.t7.value=="" || document.f1.m1.value=="" || document.f1.t9.value=="" || document.f1.d6.value=="" || document.f1.t10.value==""){
      //           alert("please enter all the mandatory details");
       //          exit(0);
       //         } else{

          //           document.f1.method="post";
          //          document.f1.action="authenticate.jsp" ;
          //          document.f1.submit();
         //       }
         //   }
  </script>

    </head>
    <body>
        <div id="container">
	<div id="header">
		<div id="logo_w1">Blood Donor</div>
		<div id="logo_w2">Symbiosis</div>
		<div id="header_text">
			<p>Donate Blood, Save Life</p>
			
		</div>
		<ul >
            <li><a href="homepage.jsp">Home</a></li>
           
			<li><a href="aboutblood.jsp">About Blood</a></li>
			<li><a href="searchreg.jsp">Search</a></li>
			<li><a href="bbhome.jsp">BloodBank Details</a></li>
			<li><a href="hospitalhome.jsp">Hospital Details</a></li>
			<li><a href="todayspostreg1.jsp">Todays Posts</a></li>
			<li><a href="docarticles.jsp">Doctor Articles</a></li>
		</ul>
	</div>
	<div id="content">
		<div id="center">

             <form name="f1" method="post"  onSubmit="return RegistrationValidation();" action="authenticate.jsp">
            <a><center><h2>DONOR REGISTRATION</h2></center></a>
            <p><h3>Sign Up</h3></p>
            <font color="red"></font><br>

            <TABLE ALIGN="center" width="600">
                <TR><TD><label for="t1">User Name:</label></TD><TD><input type="text" name="t1" onblur="checkUser();" onfocus="blank();" />
                <span id="display"></span></TD>
                </TR>
            <TR><TD>Password:</TD>        <TD><input type="password" name="t2" onblur="javascript:checkPwd()" /></TD></TR>
            <TR><TD>Confirm Password:</TD><TD><input type="password" name="t3" onblur="javascript:pwdMatch()" /></TD></TR>
            <TR><TD>E-Mail:</TD><TD><input type="text" name="t4" /></TD></TR>

            <tr><td colspan="2"><h3>Personal Information</h3></td></tr>

                <TR><TD>Donor name:</TD><TD><input type="text" name="t5" value="" /></TD></TR>
            <TR><TD>Guardian name:</TD><TD><input type="text" name="t6" value="" /></TD></TR>

             <TR><TD>Donor gender :</TD><TD><select name="d1">
                        <option>male</option>
                        <option>female</option>
                        <option>others</option>
             </select></TD></TR>

<TR><TD>Donor age:</TD><TD><select name="t7">
            <option>10</option>
            <option>11</option>
            <option>12</option>
            <option>13</option>
            <option>14</option>
            <option>15</option>
            <option>16</option>
            <option>17</option>
            <option>18</option>
            <option>19</option>
            <option>20</option>
            <option>21</option>
            <option>22</option>
            <option>23</option>
            <option>24</option>
            <option>25</option>
            <option>26</option>
            <option>27</option>
            <option>28</option>
            <option>29</option>
            <option>30</option>
            <option>31</option>
            <option>32</option>
            <option>33</option>
            <option>34</option>
            <option>35</option>
            <option>36</option>
            <option>37</option>
            <option>38</option>
            <option>39</option>
            <option>40</option>
            <option>41</option>
            <option>42</option>
            <option>43</option>
            <option>44</option>
            <option>45</option>
            <option>46</option>
            <option>47</option>
            <option>48</option>
            <option>49</option>
            <option>50</option>
            <option>51</option>
            <option>52</option>
            <option>53</option>
            <option>54</option>
            <option>55</option>
            <option>56</option>
            <option>57</option>
            <option>58</option>
            <option>59</option>
            <option>60</option>

</select></TD></TR>

<TR><TD>Address:</TD><TD><textarea name="m1" rows="4" cols="30"></textarea></TD></TR>


                        <TR><TD>Zip:</TD><TD><input type="text" name="t8" value=" "/></TD></TR>





             <TR><TD>District:</TD><td>
					<select name="d4">
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
				</td></TR>


           <TR><TD> Area:</TD><TD><input type="text" name="d5"></TD></TR>

            <TR><TD>PhoneNo:</TD><TD><input type="text" name="t9" value=""/></TD></TR>

            <TR><TD>Blood Group:</TD><TD><select name="d6">

                            <option value="A+">A+</option>
                            <option value="A-">A-</option>
                            <option value="B+">B+</option>
                            <option value="A+">B-</option>
                           <option value="AB+">AB+</option>
                           <option value="AB-">AB-</option>
                           <option value="O+">O+</option>
                           <option value="O-">O-</option>
                           </select></TD></TR>
            <TR><TD>last donation date:</TD><TD>
                <script>DateInput('t10', true, 'MM/DD/YYYY')</script>
                <!-- <input type="text" name="t10" value=""/> --> </TD></TR>  
 
           <TR><TD> <input type="submit"  name="s1" value="create user" /></TD></TR></TABLE>
            <h3><b><u> be the reason for someone's heartbeat</b></u></h3>


        </form>
        
		</div>

		

		<div id="footerline"></div>
	</div>

	<div>Blood Donor Symbiosis.  All rights reserved.</div>
</div>



        <!--  <input type="button" value="About Blood" name="b1"/>
            <input type="button" value="Edit Profile" name="b2"/>
            <input type="button" value="Search" name="b3"/>
            <input type="button" value="Home" name="b4"/><br>
           -->
       
    </body>
</html>