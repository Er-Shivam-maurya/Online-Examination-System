
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
                <h2 style="text-align: center; font-family: serif;">Question Bank Management</h2>
                <form class="form-group" method="post" action="admincontroller.jsp">
                    <input type="hidden" name="page" value="qb">
                    <table class="table table-border" style="margin:0px auto; width:70%;">
                        <tr>
                            <td>Select course</td>
                            <td>
                                <select name="coursename" class="form-group">
                                    <%
                                    DbManager dm=new DbManager();
                                    ResultSet rs=dm.select("select *from course");
                                    while(rs.next())
                                    {
                                    %>
                                    <option><%=rs.getString("coursename")%></option>
                                    <% }%>
                                    
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter Question</td>
                            <td>
                                <textarea name="question" class="form-control"></textarea>
                            </td>
                        </tr>
                         <tr>
                            <td>option 1</td>
                            <td>
                                <textarea name="opt1" class="form-control"></textarea>
                            </td>
                        </tr>
                         <tr>
                            <td>option 2</td>
                            <td>
                                <textarea name="opt2" class="form-control"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>option 3</td>
                            <td>
                                <textarea name="opt3" class="form-control"></textarea>
                            </td>
                        </tr>
                         <tr>
                            <td>option 4</td>
                            <td>
                                <textarea name="opt4" class="form-control"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td> correct option </td>
                            <td>
                                <textarea name="correct" class="form-control"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td> 
                                <a href="viewqb.jsp">
                                    <button type="button" class="btn btn-success">View Questions</button>
                                </a>
                            
                            </td>
                            <td>
                                <button name="submit" class="btn btn-success">submit</button>
                            </td>
                        </tr>
                    </table>
                </form>               
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
            
        