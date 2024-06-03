<%-- 
    Document   : ChangePasswordForget
    Created on : Jun 1, 2024, 10:25:00 PM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="Menu.jsp" %>
        <div class="col-10 bg-light dashboard border">
            <div class="mb-3 p-3 ">
                <h3 class="mb-3">
                    Change Password
                </h3>
                <form id="changePasswordForm" action="yourActionURL" method="post">
                    <div class="mb-3 row">
                        <label for="inputPasswordNew" class="col-sm-2 col-form-label">Password New</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="inputPasswordNews">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="inputPasswordNewConfirm" class="col-sm-2 col-form-label">Password confirm</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="inputPasswordNewConfirm">
                        </div>
                    </div>
                    <div class=" d-flex align-content-center justify-content-center">
                        <button type="button" class="btn btn-primary me-3" onclick="checkConfirmPassword()">Change</button>
                        <button type="reset" class="btn btn-danger">Reset</button>
                    </div>
                </form>

                <div id="popupWrongConfirmPassword" class="border justify-content-center align-content-center text-center bg-white rounded w-50 container">
                    <div class="mt-2">
                        <img id="imgWrongConfirmPassword" src="${pageContext.request.contextPath}/img/wrongConfirmPassword.png" alt="alt"/>
                    </div>
                    <div>
                        <h4 id="notification">
                        </h4>

                        <button class="btn btn-danger mb-3" onclick="closePopup(false)">Ok</button>
                    </div>
                </div>

                <div id="poUpChangePasswordSucessfull" class="border justify-content-center align-content-center text-center bg-white rounded w-50 container">
                    <div>
                        <img id="imgWrongConfirmPassword" src="${pageContext.request.contextPath}/img/02-lottie-tick-01-instant-2.gif" alt="alt"/>
                    </div>
                    <div>
                        <h4 id="notificationPopup" class="success">
                        </h4>
                        <button class="btn btn-success mb-3" onclick="closePopup(true)">Ok</button>
                    </div>
                </div>

            </div>
        </div>

    </div>
</body>
<script>  function checkConfirmPassword() {
        var popupWrongConfirmPassword = document.getElementById("popupWrongConfirmPassword");// kiem tra xac nhan password moi
        var poUpChangePasswordSucessfull = document.getElementById("poUpChangePasswordSucessfull");
        var inputNewPassword = document.getElementById("inputPasswordNews").value;
        var inputPasswordNewConfirm = document.getElementById("inputPasswordNewConfirm").value;
        var notificationPopup = document.getElementById("notificationPopup");
        var notification = document.getElementById("notification");


        if (inputNewPassword === inputPasswordNewConfirm) {// thanh cong
            notificationPopup.innerHTML = "Change password successfully!";
            poUpChangePasswordSucessfull.style.display = "block";
            poUpChangePasswordSucessfull.style.position = "absolute";
            poUpChangePasswordSucessfull.style.top = "200px";
            poUpChangePasswordSucessfull.style.left = "450px";
        } else {
            notification.innerHTML = "Confirm password not match!";// thong bao h4 nofication if poupWrongConfrimPassword
            popupWrongConfirmPassword.style.display = "block";
            popupWrongConfirmPassword.style.position = "absolute";
             poUpChangePasswordSucessfull.style.top = "200px";
            poUpChangePasswordSucessfull.style.left = "450px";
            //

        }
    }

    function closePopup(isSuccess) {
        var popupWrongConfirmPassword = document.getElementById("popupWrongConfirmPassword");
        var popupChangePasswordSuccessful = document.getElementById("poUpChangePasswordSucessfull");

        popupWrongConfirmPassword.style.display = "none";
        popupChangePasswordSuccessful.style.display = "none";

        if (isSuccess) {
            document.getElementById("changePasswordForm").submit();
        }
    }
    
</script>
</html>
