
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
                <h2 style="font-family: fantasy; text-align: center; margin-top: 25px;">ENQUIRY MANAGEMENT</h2>
                <table class="table table-border" style="margin: auto;width: 90%;">
                    <tr>
                        <th>ID</th>
                         <th>Name</th>
                          <th>Gender</th>
                           <th>Address</th>
                             <th>Contact no</th>
                             <th>Email Address</th>
                              <th>Enquiry text</th>
                               <th>Enquiry date</th>
                               <th>Delete</th>
                    </tr>
         <%
        DbManager dm=new DbManager();
        ResultSet rs=dm.select("select*from enquiry");
        while(rs.next())
        {
      
        %>
        <tr>
            <td><%=rs.getString("Id")%></td>
            <td><%=rs.getString("name")%></td>
            <td><%=rs.getString("gender")%></td>
            <td><%=rs.getString("address")%></td>
            <td><%=rs.getString("contactno")%></td>
            <td><%=rs.getString("emailaddress")%></td>
            <td><%=rs.getString("enquirytext")%></td>
            <td><%=rs.getString("enquirydate")%></td>
            <td>
                <a href="delenq.jsp?id=<%=rs.getString("id")%>">
                    <button class="btn btn-danger">Delete</button>
                </a>
            </td>
        </tr>
        
        <% } %>
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
            
        