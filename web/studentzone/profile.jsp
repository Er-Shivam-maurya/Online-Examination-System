
<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>

<%-- 
    Document   : adminhome
    Created on : 16 Sep, 2023, 2:38:50 PM
    Author     : arjun
--%>
<%
if(session.getAttribute("rollno")==null)
{
response.sendRedirect("../login.jsp");
}
else
    {


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NALANDA OPEN UNIVERSITY</title>
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <script src="../js/bootstrap.bundle.js"></script>
    </head>
    <body>
        
        <div class="container-fluid">
            <jsp:include page="header.jsp"/>
        <div class="row">
            <div class="col-sm-12"  style="min-height: 500px;background-color: lightgray;">
                <h2 style="text-align: center; font-family:fantasy;"> Student Profile</h2>
                <table class="table table-border" style="width:60%; margin: auto;">
                   <%
                   String rollno=session.getAttribute("rollno").toString();
                   DbManager dm=new DbManager();
                   ResultSet rs=dm.select("select *from studentinfo where rollno='"+rollno+"'");
                   if(rs.next())
                   {
                       %>
                <tr>
                       
                    <td>Roll No</td>
                    <td><%=rs.getString("rollno")%>
                            
                    </td>
                </tr>
                 <tr>                      
                    <td>Name</td>
                    <td><%=rs.getString("name")%></td>
                </tr>
                       <tr>
                       
                    <td>Father Name</td>
                    <td><%=rs.getString("fname")%></td>
                </tr>
                     <tr>                      
                    <td>Mother Name</td>
                    <td><%=rs.getString("mname")%></td>
                </tr>
                      <tr>                      
                    <td>gender</td>
                    <td><%=rs.getString("gender")%></td>
                </tr>
              
                    <tr>                      
                    <td>program</td>
                    <td><%=rs.getString("program")%></td>
                </tr>
                <tr>                      
                    <td>branch</td>
                    <td><%=rs.getString("branch")%></td>
                </tr>
                <tr>                      
                    <td>year</td>
                    <td><%=rs.getString("year")%></td>
                </tr>
                 <tr>                      
                    <td>contact No</td>
                    <td><%=rs.getString("contactno")%></td>
                </tr>
                <tr>                      
                    <td>Email address</td>
                    <td><%=rs.getString("emailaddress")%></td>
                </tr>
                 <tr>                      
                    <td>reg date</td>
                    <td><%=rs.getString("regdate")%></td>
                </tr>
                                                             
                   <% }%>
                </table>
                
            </div>
        </div>
            
         <div class="footer">
                <div class="row bg bg-dark footer "> 
                    <div class="col-sm-4"></div>
                        <div class="footer row text-center "><h6 style="color:azure; background-color:black; border: 20px;">&copy; copyright 2023-2024 all right reserved ,designed and developed by |Sh@nti</h6></div>
           
     </div>
       </div>
            </div>>
    </body>
</html>
<% } %>
            
        