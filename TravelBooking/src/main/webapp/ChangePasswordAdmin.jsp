<%-- 
    Document   : ChangePasswordAdmin
    Created on : May 27, 2024, 1:50:13 PM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
    </head>
    <body>
        <%@include file="Menu.jsp" %>
        <div class="col-10 bg-light dashboard border" id="list">
            <div id="menu_icon" onclick="toggleMenu()"><box-icon name='menu'></box-icon></div>
            <div class="mb-3 p-3 ">
                <h3 class="mb-3 d-flex">
                    <a href="/ProfileUserController/Profile">Profile/</a><p class="text-decoration-underline"> Change Password</p>
                </h3>
                <div id="changePassword" class="col-10 border rounded ms-2 p-2">
                    <div class="p-2">
                        <h3>
                            Change password
                        </h3>
                        <i>For account security, please do not share your password with others</i>
                        <form>
                            <div class="mb-3 row mt-3">
                                <label for="inputPasswordOld" class="col-sm-2 col-form-label">Password Old</label>
                                <p id="checkPasswordOld" style="display: none;">0</p>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control" id="inputPasswordOld">
                                </div>
                            </div>
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

                                <button type="button" class="btn btn-danger"id="btn_forgotPassword" onclick="popUp()">Fotgot password</button>
                            </div>
                        </form>
                        <!-- popup forgot -->
                        <div id="popup" class="border justify-content-center align-content-center text-center bg-white rounded w-50 container">
                            <div class="close" id="close" onclick="closePopup()">
                                <box-icon type='solid' color="red" name='x-square'></box-icon>
                            </div>
                            <div class="mt-2">
                                <img src="${pageContext.request.contextPath}/img/forgot-removebg-preview.png" alt="alt"/>
                            </div>
                            <div>
                                <h3 class="my-3">
                                    Forgot Password
                                </h3>
                                <a>Enter your email and we'll send you a link to reset your
                                    password!</a>
                                <div class="mt-4 input-group">
                                    <span class="input-group-text" id="basic-addon3">Email</span>
                                    <input type="text" class="form-control" id="basic-url" aria-describedby="basic-addon3 basic-addon4">
                                </div>
                                <p></p>
                                <button class="btn btn-danger mb-3"><a href="/ProfileUserController/OTP">Submit</a></button>
                            </div>
                        </div>
                        <!-- popup -->
                        <!--popup Confirm Passwordnew and passwordOld-->
                        <div id="popupWrongConfirmPassword" class="border justify-content-center align-content-center text-center bg-white rounded w-50 container">
                            <div class="mt-2">
                                <img id="imgWrongConfirmPassword" src="${pageContext.request.contextPath}/img/wrongConfirmPassword.png" alt="alt"/>
                            </div>
                            <div>
                                <h4 id="notification">
                                </h4>

                                <button class="btn btn-danger mb-3" onclick="closePopup()">Ok</button>
                            </div>
                        </div>

                        <!--popupWrongConfirmPassword-->
                        <!--poUpChangePasswordSucessfull-->
                        <div id="poUpChangePasswordSucessfull" class="border justify-content-center align-content-center text-center bg-white rounded w-50 container">
                            <div>
                                <img id="imgWrongConfirmPassword" src="${pageContext.request.contextPath}/img/02-lottie-tick-01-instant-2.gif" alt="alt"/>
                            </div>
                            <div>
                                <h4 id="notificationPopup" class="success">
                                </h4>

                                <button class="btn btn-success mb-3" onclick="closePopup()">Ok</button>


                            </div>
                        </div>

                        <!--poUpChangePasswordSucessfull-->
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script>
        function popUp() {
            var popup = document.getElementById("popup");
            popup.style.display = "block";
            popup.style.position = "absolute";
            popup.style.top = "10px";
            popup.style.left = "200px";

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
        function checkConfirmPassword() {
            var popupWrongConfirmPassword = document.getElementById("popupWrongConfirmPassword");// kiem tra xac nhan password moi
            var poUpChangePasswordSucessfull = document.getElementById("poUpChangePasswordSucessfull");
            var inputNewPassword = document.getElementById("inputPasswordNews").value;
            var inputPasswordNewConfirm = document.getElementById("inputPasswordNewConfirm").value;
            var checkPasswordOld = document.getElementById("checkPasswordOld");
            var checkPasswordOldValue = checkPasswordOld.textContent.trim();
            var notificationPopup = document.getElementById("notificationPopup");
            var notification = document.getElementById("notification");


            if (inputNewPassword === inputPasswordNewConfirm && checkPasswordOldValue === "0" || checkPasswordOldValue === 0) {// thanh cong
                notificationPopup.innerHTML = "Change password successfully!";
                poUpChangePasswordSucessfull.style.display = "block";
                poUpChangePasswordSucessfull.style.position = "absolute";
                poUpChangePasswordSucessfull.style.top = "10px";
                poUpChangePasswordSucessfull.style.left = "200px";
            } else if (inputNewPassword === inputPasswordNewConfirm && checkPasswordOldValue === "1" || checkPasswordOldValue === 1) { // that bai
                notification.innerHTML = "Password old wrong!";// thong bao h4 nofication if poupWrongConfrimPassword
                popupWrongConfirmPassword.style.display = "block";
                popupWrongConfirmPassword.style.position = "absolute";
                popupWrongConfirmPassword.style.top = "10px";
                popupWrongConfirmPassword.style.left = "200px";
            } else {
                notification.innerHTML = "Confirm password not match!";// thong bao h4 nofication if poupWrongConfrimPassword
                popupWrongConfirmPassword.style.display = "block";
                popupWrongConfirmPassword.style.position = "absolute";
                popupWrongConfirmPassword.style.top = "10px";
                popupWrongConfirmPassword.style.left = "200px";
                //

            }
        }

        // cai dat gio nhap ma otp
        let count = Number(document.getElementById("timeView").innerHTML);
        const timeoutId = setInterval(function () {
            document.getElementById('timeView').innerHTML = ++count;
            if (count > 3) {
                clearTimeout(timeoutId);
            }
        }, 1000);
///


    </script>
</html>
