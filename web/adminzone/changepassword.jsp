<%-- 
    Document   : adminhome
    Created on : Sep 16, 2023, 2:39:31 PM
    Author     : Dell
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NALNDA OPEN UNIVERCITY</title>
        <link href="../css/bootstrap.css" rel="stylesheet">
        <script src="../js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <script>
                    function validate(){
                        
                        var op=document.getElementById("oldpassword");
                        var np=document.getElementById("newpassword");
                        var cp=document.getElementById("confirmpassword");
                       
                        if(op.value==""||op.value==null)
                        {
                            
                            alert("Pleace Enter your Old password");
                            op.focus();
                        }
                        else if(np.value==""||np.value==null){
                            
                            alert("Enter Your new Password");
                            np.focus();
                        }
                        else if (np.value!=cp.value)
                        {
                            alert("New password and Confirm Password are not match");
                            cp.focus();
                        }
                        else{
                            document.getElementById("frmchangepassword").submit();
                        }
                    }
                </script>
        <div class="container-fluit">
            <jsp:include page="header.jsp"/>
                <div class="row">
                    <div class="col-sm-12" style="min-height: 600px; margin: auto; text-align: center;">
                       <div id="box"style="background-color: lightgray;height: 100%;width: 50%;margin: auto;text-align: center;">
                           <form id="frmchangepassword" onsubmit="event.preventDefault();validate();" class="form-control" action="admincontroller.jsp" method="post">
                               <input type="hidden" name="page" value="changepassword"/>
                                <table style="text-align: center;margin: auto;">
                                    <tr>
                                        <td>Enter Old Password</td>
                                        <td> <input type="password" name="oldpassword" id="oldpassword" class="form-control"/></td>
                                    </tr>
                                    <td>Enter new Password</td>
                                    <td> <input type="text" name="newpassword" id="newpassword" class="form-control"/></td>
                                    </tr>
                                    <td>confirm Password</td>
                                    <td> <input type="text" name="confirmpassword"id="confirmpassword" class="form-control"/></td>
                                    </tr>
                                    <tr>
                                    <td></td>
                                    <td> <button type="submit" class="btn btn-success">Change</button></td>
                                    </tr>
                                </table>
                            </form>
                    </div>
                </div>
            </div>
            
        </div>
        <div class="row">
            <div class="cpl-sm-6 bg-danger " style="min-height:150px; "></div>   
                <div class="cpl-sm-6 bg-dark"></div>
            </div>
                
    </body>
</html>