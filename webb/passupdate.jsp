<%-- 
    Document   : passupdate
    Created on : Mar 3, 2009, 1:45:26 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*"%>


        <% try {
             String s = (String)session.getAttribute("uname");
             String oldpsw=request.getParameter("t1");
             String newpsw=request.getParameter("t2");
             boolean exists=false;
             
             
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bds", "root", "mysql");
            Statement st = conn.createStatement();
            Statement st1=conn.createStatement();
            ResultSet rs=st1.executeQuery("select pswd from user where uname='"+s+"' and pswd='"+oldpsw+"'");

            if(rs.next()){
                exists=true;
                }
            if(exists){
            int i=st.executeUpdate("update user set pswd='"+newpsw+"' where uname='"+s+"'");
            int j=st.executeUpdate("update user set pswd='"+newpsw+"' where uname='"+s+"'");
             response.sendRedirect("login.jsp");
            }else{
                request.setAttribute("wrongpwd","wrongpwd");
                %>
                 <jsp:forward page="changepswd.jsp"></jsp:forward>
                <%}
           
           
 

    
 } catch (SQLException e) {
     e.printStackTrace();
                   %><%

 } catch (Exception e) {
                   %><%= "other error"%><%
            e.printStackTrace();
        }

                   %>



    </body>
</html>
