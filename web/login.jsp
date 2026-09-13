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
        <script>
            function validate()
            {
              var userid=document.getElementById("userid");
              var password=document.getElementById("password");
              if(userid.value==""||userid.value==null)
              {
                 alert("please enter userid"); 
                 userid.focus();
              }
              else if(password.value==""||password.value==null)
              {
               alert("please enter password");
               password.focus(); 
              }
              else
              {
              document.getElementById("frmlogin").submit();   
              }
            }
        </script>
        <div class="container-fluid">
            <jsp:include page="header.jsp"/>
             <div class="row">
         <marquee behavior="scroll" style="background-color:orange; color:white;"> <h3> NALNDA OPEN UNIVERCITY,BIHAR</h3></marquee>  
        </div>
                    <div class="row mt-2">
                        <div class="col-sm-7" style="min-height:300px; background-color:orange; margin: auto;">
                            <image src="images/lib.jpg"/>
                        </div>
                        <div class="col-sm-5" style="min-height:300px; background-color:orange;">
                            <h2 style=color:white;text-align:center;>LOGIN FORM</h2>
                            <div class="col-sm-11" style="background-color: lightgray;min-height: 300px; margin:auto;">
                            <form id="frmlogin" onsubmit="event.preventDefault();validate();" class="form-group" method="post" action="controller.jsp"  >
                                
                                <table class="table table-border table-secondary">
                                    <input type="hidden" name="page" value="login"/>
                                    <tr>
                                        <td> Enter User Id</td>
                                        <td><input type="text" name="userid" class="form-control" id="userid" ></td>
                                    </tr> 
                                    <tr>
                                        <td>Enter password</td>
                                        <td><input type="password" name="password" class="form-control" id="password"></td>
                                    </tr> 
                                    <tr>
                                        <td></td>
                                        <td>
                                            <button type="submit" class="btn btn-success"> LOGIN</button>
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
