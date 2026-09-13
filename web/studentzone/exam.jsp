
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
                <h2 style="text-align: center; font-family: serif;">EXAMINATION MODULE</h2>
                <form class="form-group" method="post" action="studentcontroller.jsp">
                    <input type=" hidden" name="page" value="Exam">
                <table class=" table table-border " style="width: 60%; margin: auto;">
                    <tr>
                        <td>Select Course</td>
                        <td>
                            <select name="coursename" class="form-control">
                        <%
                        DbManager dm=new DbManager();
                        ResultSet rs=dm.select("select * from course");
                        while(rs.next())
                        {
                        %>
                        <option value="<%=rs.getString("coursename") %>">
                            <%=rs.getString("coursename")%>
                        </option>
                        <%  } %>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <ul>
                                <li>All Question compalsary</li> 
                                  <li>Each Question carry 1 marks</li> 
                                  <li>No negativ marks</li> 
                            </ul>
                        </td>
                    </tr>
                     <tr>
                        <td colspan="2">
                            <button type="submit" class="btn btn-success">start</button>
                            
                        </td>
                    </tr>
                </table>
                </form>              
            </div>
        </div>
            
         <div class="footer">
                <div class="row bg bg-dark footer mt-2"> 
                    <div class="col-sm-4"></div>
                        <div class="footer row text-center "><h6 style="color:azure; background-color:black; border: 20px;">&copy; copyright 2023-2024 all right reserved ,designed and developed by |Sh@nti</h6></div>

     </div>
       </div>
            </div>>
    </body>
</html>
<% } %>
            
        