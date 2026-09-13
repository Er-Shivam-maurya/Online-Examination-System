<%-- 
    Document   : index
    Created on : 10 Sep, 2023, 1:40:45 PM
    Author     : arjun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Examination System</title>
        <link href="css/bootstrap.css" rel="stylesheet"/>
        <script src="js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <div class="container-fluid">
            <jsp:include page="header.jsp"/>
             <div class="row">
         <marquee behavior="scroll" style="background-color:orange; color:white;"> <h3>  ENQUIRY FORM OF STUDENT NALNDA OPEN UNIVERCITY,BIHAR</h3></marquee>  
        </div>
                    <div class="row mt-2 bg-warning">
                        <div class="col-sm-4" style="min-height:500px;">
                                    <h2 style="text-align: center; font-size:30px;">Student Enquiry form</h2>
                                    <image src="images/g2.jpg" style="margin: auto 10px;"/ >
                        </div>
                        <div class="col-sm-8" style="min-height:500px; background-color:orange;">                      
                        <h2 style="text-align: center; font-size:30px;">Enquiry Form </h2>
                        <form class="form-group" method="post" action="controller.jsp " style=" background-color:brown; ">
                            <input type="hidden" name="page" value="contactus"/>
                            <table class="table table-secondary">
                                <tr>
                                    <td>Enter Name</td>
                                    <td>
                                        <input type="text" name="name" class="form-control"/>
                                    </td> 
                                </tr>
                                <tr>
                                    <td>Enter Gender</td>
                                    <td>
                                        <input type="radio" value="male" class="for-check-input">male
                                    
                                        <input type="radio" value="female" class="for-check-input">female
                                     </td>
                                </tr>
                                <tr>
                                    <td>Enter Address</td>
                                    <td>
                                        <textarea name="address" class="form-control"></textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Enter contact No</td>
                                    <td>
                                        <input type="number" name="contactno" class="form-control">
                                    </td>
                                </tr>
                                 <tr>
                                    <td>Enter Email Address</td>
                                    <td>
                                        <input type="email" name="emailaddress" class="form-control">
                                    </td>
                                </tr>
                                 <tr>
                                    <td>Enter Enquiry Txet </td>
                                    <td>
                                         <textarea name="enquirytext" class="form-control"></textarea>
                                    </td>
                                </tr>
                                <td></td> 
                                <td>
                                    <button type="submit" class="btn btn-success">submit</button>
                                </td>
                               
                            </table>
                        </form>
        </div>                   
                    </div> 
            
        </div>
            <jsp:include page="footer.jsp"/>
    </body>
</html>
