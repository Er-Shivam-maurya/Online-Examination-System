
<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<%-- 
    Document   : adminhome
    Created on : 16 Sep, 2023, 2:38:50 PM
    Author     : arjun
--%>
<%
if(session.getAttribute("adminid")==null)
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
            <div class="col-sm-12"  style="min-height: 300px;background-color: lightgray;">
                <h2 style="text-align:center; font-family: fantasy;"> course management</h2> 
                <form class="form-group" method="post" action="admincontroller.jsp">
                    <input type="hidden" name="page" value="course"/>
                    <table class="table table-border"style="width:50%; margin: 0% auto;">
                        <tr>
                            <td>Enter course name</td>
                            <td><input type="text" name="coursename" class="form-control" required ></td>
                            
                        </tr>
                        <tr>
                            <td></td>
                        <td>
                            <button type="submit" class="btn btn-success">submit</button>
                        </td>
                        </tr>
                    </table>
                </form>
                <br/>
                
                <table class="table table-border" style="margin:0 auto; width: 50%;"> 
                    <tr>
                        <th>id</th>
                        <th>course</th>
                        <th>delete</th>
                    </tr>
                    <%
                    DbManager dm=new DbManager();
                    ResultSet rs=dm.select("select* from course");
                    while(rs.next())
                    {
                    %>
                    <tr>
                        <td><%=rs.getString("id")%></td>
                        <td><%=rs.getString("coursename")%></td> 
                        <td>
                             <a href="delcourse.jsp?id=<%=rs.getString("id")%>">
                                    <button class="btn btn-warning"> delete</button>
                                </a>
                        </td>
                    </tr>
                       
                  <%  }%>
                </table>
               
            </div>
        </div>
            
         <div class="footer">
                <div class="row bg bg-dark footer mt-2"> 
                    <div class="col-sm-4"></div>
     <div class="col-sm-4 text-center text-light">
         <h2>ABOUT</h2>
    <img src="images/logo.jpeg" alt="" >
     <p>Sincere efforts, digital enhancements and a team of dedicated personnel with an equally loyal customer base have made<br>
         shivam kumar maurya is the online platform that it is today. <br>
         The original B2B venture for personalized gifts was conceived<br> in 2007 but transitioned into a full-fledged ecommerce giant within a span of just <br>a few </p> 
     </div>
        <div class="col-sm-4"></div>             
     </div>
       </div>
            </div>>
    </body>
</html>
<% } %>
            
        