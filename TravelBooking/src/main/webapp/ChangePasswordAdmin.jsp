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
                        <div class="mb-3 row mt-3">
                            <label for="inputPasswordOld" class="col-sm-2 col-form-label">Password Old</label>
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
                            <button class="btn btn-primary me-3">Change</button>
                            <button class="btn btn-danger"id="btn_forgotPassword" onclick="popUp()">Fotgot password</button>
                        </div>

                        <!-- popup forgot -->
                        <div id="popup" class="border justify-content-center align-content-center text-center bg-white rounded w-50 container">
                            <div class="close" id="close" onclick="closePopup()">
                                <box-icon type='solid' color="red" name='x-square'></box-icon>
                            </div>
                            <div>
                                <img src="${pageContext.request.contextPath}/img/forgot-removebg-preview.png" alt="alt"/>
                            </div>
                            <div>
                                <h3 class="mb-3">
                                    Forgot Password
                                </h3>
                                <p>Enter your email and we'll send you a link to reset your
                                    password.</p>
                                <div class="mt-4">
                                    <span>Email</span>
                                    <input class="border rounded" style="email" name="email"/>
                                </div>
                                <p></p>
                                <button class="btn btn-outline-danger mb-3">Submit</button>
                            </div>
                        </div>
                        <!-- popup -->
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
        function closePopup() {
            var popup = document.getElementById("popup");
            popup.style.display = "none";
        }
    </script>
</html>
