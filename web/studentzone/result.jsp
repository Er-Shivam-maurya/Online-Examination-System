
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
                <h2 style="text-align: center; font-family:serif;">View Result</h2>
                <table class="table table-border" style="margin: auto; width: 80%">
                    <tr>
                        <th>ID</th>
                        <th> Roll No</th> 
                           <th> course name</th> 
                        <th> Total Mark</th>
                        <th> Getmark</th>
                        <th> Exam date</th> 
                    </tr>
                    <%
                    String rollno=session.getAttribute("rollno").toString();
                    String query="select * from result where rollno='"+rollno+"'";
                    DbManager dm=new DbManager();
                    ResultSet rs=dm.select(query);
                    while(rs.next())
                    {   
                    
                    %>
                    <td><%=rs.getString("id")%></td>
                    <td><%=rs.getString("rollno")%></td>
                    <td><%=rs.getString("coursename")%></td>
                    <td><%=rs.getString("totalmark")%></td>
                    <td><%=rs.getString("getmark")%></td>
                    <td><%=rs.getString("examdate")%></td>                  
                    <% }%>
                    
                    
                </table>
                
                
            </div>
        </div>
            
         <div class="footer">
                <div class="row bg bg-dark footer "> 
                    <div class="col-sm-4"></div>
                        <div class="footer row text-center "><h6 style="color:azure; background-color:black;  height:80px;">&copy; copyright 2023-2024 all right reserved ,designed and developed by |Sh@nti</h6></div>
    
     </div>
       </div>
            </div>>
    </body>
</html>
<% } %>
            
        