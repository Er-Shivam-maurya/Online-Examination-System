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
         <marquee behavior="scroll" style="background-color:orange;"> <h3> NALNDA OPEN UNIVERCITY,BIHAR</h3></marquee>  
        </div>
                    <div class="row mt-2">
                        <div class="col-sm-4" style="min-height:600px; background-color: orange;">
                            <img src="images/u1.png" style="margin: auto 80px; height:350px;width:350px; margin-top: 50px;">
                    <h3 style="font-size:30px; text-align: center; color: white;">Student Registration Form For Student Of The Nalanda University Patna 800001(Bihar)</h3>
                        </div>
                        <div class="col-sm-8" style="min-height:600px; background-color: orange;">
                               <h2 style="text-align: center;"> Student Registration Form</h2>
                            <form class="form-group" method="post" action="controller.jsp" style="background-color:blue">
                                <input type="hidden" name="page" value="registration">
                                <table class="table table-border table-secondary">
                                    <tr>
                                        <td >Enter roll No</td>
                                        <td><input type="number" name="rollno" class="form-control"></td>
                                    </tr>
                                     <tr>
                                        <td>Enter name</td>
                                        <td><input type="text" name="name" class="form-control"></td>
                                    </tr>
                                     <tr>
                                        <td>Enter Father Name</td>
                                        <td><input type="text" name="fname" class="form-control"></td>
                                    </tr>
                                     <tr>
                                        <td>Enter Mother Name</td>
                                        <td><input type="text" name="mname" class="form-control"></td>
                                    </tr>
                                    <tr>
                                    <td>Select Gender</td>
                                    <td>
                                        <input type="radio" value="male" name="gender" class="form-check-input">male
                                    
                                        <input type="radio" value="female" name="gender" class="form-check-input">female
                                     </td>
                                </tr>
                                <tr>
                                <td>Enter Address</td>
                                <td>
                                        <textarea name="address" class="form-control"></textarea>
                                 </td>
                                 </tr>
                                 <tr>
                                     <td>Select program</td>
                                             <td><select name="program" class="form-control">
                                                     <option selected>-Select Program-</option>
                                                     <option value="B.Tech."> B.Tech.</option>
                                                     <option value="M.Tech."> M.Tech.</option>
                                                     <option value="Diploma.">Diploma</option>
                                         </select>
                                     </td>
                                 </tr> 
                                 <tr>
                                     <td>select Branch</td>
                                     <td><select name="branch" class="form-control">
                                         <option selected>-Select branch-</option>
                                                     <option value="IT"> IT</option>
                                                     <option value="CS"> CS</option>
                                                     <option value="EC">EC</option>
                                                     <option value="EC">EC</option>
                                         </select>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>Select Year</td> 
                                     <td><select name="year"class="form-control">
                                     <option selected>-Select Year-</option>
                                                     <option value="First Year"> First Year</option>
                                                     <option value="Second Year"> Second Year</option>
                                                     <option value="Final year">Final year</option>
                                                     
                                         </select>
            </td>
                                 </tr>
                                 <tr>
                                     <td>Enter Contact Number</td>
                                     <td><input type="number" name="contactno" class="form-control"></td>
                                 </tr>
                                 <tr>
                                     <td>Enter Email Address</td>
                                     <td><input type="text" name="emailaddress" class="form-control"></td>
                                 </tr>
                                   <tr style>
                                     <td>Enter password</td>
                                     <td><input type="password" name="password" class="form-control"></td>
                                 </tr>
                                   <tr>
                                     <td>Enter re-password</td>
                                     <td><input type="password" name="confirmpassword" class="form-control"></td>
                                   </tr>
                                 <tr>
                                     <td></td>
                                     <td>
                                         <button type="submit" class="btn-outline-success">Register</button>
                                     </td>
                                 </tr>
                                </table>
                            </form>
                        </div>
                    </div> 
            <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>
