<%-- 
    Document   : Profile.jsp
    Created on : May 22, 2024, 9:59:51 PM
    Author     : nguye
--%>

<%@page import="Model.ProfileUserModel"%>
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
            <div class="p-3">
                <h3 class="mb-3">
                    Profile
                </h3>
                <%
                    ProfileUserModel a = (ProfileUserModel) session.getAttribute("profile");
                %>
                <div class="d-flex align-content-center justify-content-center">
                    <div class="col-4 me-2">
                        <div class="d-flex align-content-center justify-content-center mb-3">
                            <img class="rounded-circle" src="${pageContext.request.contextPath}/img/<%=a.getImage()%>" alt="alt"/>
                        </div>
                        <h4 class="text-center"><%=a.getUserName()%></h4>
                        <div class="d-flex justify-content-center align-content-center mt-3">
                            <button class="btn btn-danger"><a class="text-white" href="/ProfileUserController/ChangePasswordAdmin">Change Password</a></button>
                        </div>
                        <div class="text-center mt-3 row">
                            <div class="col-md-12">
                                <Strong>Email</Strong>
                                <p class="rounded border bg-body p-2"><%=a.getEmail()%></p>
                            </div>
                            <div class="col-md-6">
                                <Strong>Phone</Strong>
                                <p class="rounded border bg-body p-2"><%=a.getPhone()%></p>
                            </div>

                            <div class="col-md-6">
                                <Strong>Brithday</Strong>
                                <p class="rounded border bg-body p-2"><%=a.getBirthday()%></p>
                            </div>
                            <div class="col-md-12">
                                <Strong>Gender</Strong>
                                <p id="gender" class="rounded border bg-body p-2"><%=a.getGender()%></p>
                            </div>
                            <div class="col-md-12">
                                <Strong>Description</Strong>
                                <p class="rounded border bg-body p-2"><%=a.getDescription()%></p>
                            </div>

                        </div>
                        <div class="text-center">
                            <p class="m-0"><Strong>Day create account</strong></p>
                            <p><%=a.getDateLogin()%> </p>
                        </div>

                    </div>

                    <div class="save col-8 border bg-white p-3">
                        <form class="row g-3" id="profileForm"  onsubmit="event.preventDefault(); Warming();">
                            <div class="col-md-8">
                                <label for="validationServer01" class="form-label">Full name</label>
                                <input type="text" name="userName" class="form-control" id="validationServer01" value="<%=a.getUserName()%>" required>
                            </div>

                            <div class="col-md-4">
                                <label for="validationServer02" class="form-label">Date</label>
                                <input type="date" name="birthday" class="form-control" id="validationServer02" value="<%=a.getBirthday()%>" required>
                            </div>
                            <div class="col-md-5">
                                <label for="validationServer03" class="form-label">Avatar</label>
                                <input type="file" name="avatar" class="form-control" id="validationServer04" aria-describedby="validationServer04sFeedback" required>                          
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    Please select a valid avatar.
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label for="validationServer01" class="form-label">Gmail</label>
                                <input type="text" name="email" class="form-control is-valid" id="validationServer01" value="<%=a.getEmail()%>" required>
                                <div class="valid-feedback">
                                    Looks good!
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label for="validationServer01" class="form-label">Phone</label>
                                <input type="phone"  name="phone" class="form-control is-valid" id="validationServer01" value="<%=a.getPhone()%>" required>
                                <div class="valid-feedback">
                                    Looks good!
                                </div>
                            </div>
                            <div class="col-md-6">

                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="Male">
                                    <label class="form-check-label" for="flexRadioDefault1">
                                        Male
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="Female" >
                                    <label class="form-check-label" for="flexRadioDefault2">
                                        Female
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <label for="validationServer03" class="form-label">Status</label>
                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"><%=a.getDescription()%></textarea>
                                <div id="validationServer03Feedback" class="invalid-feedback">
                                    Please provide a valid status .
                                </div>
                            </div>
                            <div class="col-12"s>
                                <button class="btn btn-primary" type="submit" onclick="Warming()">Save</button>
                            </div>
                        </form>
                        <div id="popup" class="popup border w-50 p-3 text-center bg-body">
                            <div class="close" id="close" onclick="closePopup()">
                                <box-icon type='solid' color="red" name='x-square'></box-icon>
                            </div>
                            <div>
                                <img src="${pageContext.request.contextPath}/img/forgot-removebg-preview.png" alt="alt"/>
                            </div>
                            <div>
                                <h2>Are You sure</h2>
                            </div>
                            <div class="d-flex justify-content-around">
                                <button class="btn btn-danger" onclick="closePopup()">No</button>
                                <button class="btn btn-primary" onclick="submitForm()">Yes</button>
                            </div>
                        </div>  
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script>
        var gender = document.getElementById("gender");
        var male = document.getElementById("Male");
        var female = document.getElementById("Female");

        var genderValue = gender.textContent.trim();
        if (genderValue === "1" || genderValue === 1) {
            gender.innerHTML = "Male";
            male.checked = "true";
        } else {
            gender.innerHTML = "Female";
            female.checked = "true";
        }

        function Warming() {
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
        function submitForm() {
            document.getElementById("profileForm").submit();
        }

    </script>


</html>
