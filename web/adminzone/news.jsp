
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
            <div class="col-sm-12"  style="min-height: 500px;background-color: lightgray;">
                <h2 style="font-family:fantasy; text-align: center;margin-top:25px;">NEWS MANAGEMENT</h2>
                <form class="form-group" method="post" action="admincontroller.jsp">
                    <input type="hidden" name="page" value="news">
                    <table class="table table-border" style="width:70%;margin: 0 auto;">
                        <tr>
                            <td> Enter News</td>
                            <td>
                        <textarea name="newstext" class="form-control"></textarea>
                            </td>
                            
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <button type="submit" class="btn btn-success"> add news</button>
                            </td>
                        </tr>
                    </table>
                </form>
                <br/>
                <table class="table table-border " style="width:80%; margin: auto;">
                    <tr>
                        <th>id</th>
                        <th>news text</th>
                        <th>posted date</th>
                        <th>Delete</th>
                    </tr>
                    <%
                    DbManager dm=new DbManager();
                    ResultSet rs=dm.select("select* from news");
                    while(rs.next())
                    {
                        %>
                        <tr>
                            <td><%=rs.getString("id")%></td>
                            <td><%=rs.getString("newstext")%></td>
                            <td><%=rs.getString("posteddate")%></td>
                            <td>
                                <a href="delnews.jsp?id=<%=rs.getString("id")%>">
                                    <button class="btn btn-danger"> delete</button>
                                </a>
                            </td>
                        </tr>
                        
                   <%}%>
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
            
        