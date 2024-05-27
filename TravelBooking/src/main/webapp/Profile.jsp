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
                        <div class="text-center mt-3">
                            <Strong>Brithday</Strong>
                            <p><%=a.getBirthday()%></p>
                            <Strong>Description</Strong>
                            <p><%=a.getDescription()%></p>
                        </div>
                        <div class="text-center">
                            <p class="m-0"><Strong>Day create account</strong></p>
                            <p><%=a.getDateLogin()%> </p>
                        </div>

                    </div>

                    <div class="col-8 border bg-white p-3">
                        <form class="row g-3">
                            <div class="col-md-8">
                                <label for="validationServer01" class="form-label">Full name</label>
                                <input type="text" class="form-control" id="validationServer01" value="<%=a.getUserName()%>" required>

                            </div>

                            <div class="col-md-4">
                                <label for="validationServer02" class="form-label">Date</label>
                                <input type="date" class="form-control" id="validationServer02" value="<%=a.getBirthday()%>" required>

                            </div>
                            <div class="col-md-5">
                                <label for="validationServer03" class="form-label">Avatar</label>
                                <input type="file" class="form-control" id="validationServer04" aria-describedby="validationServer04sFeedback" required>                          
                                <div id="validationServer04Feedback" class="invalid-feedback">
                                    Please select a valid avatar.
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label for="validationServer01" class="form-label">Gmail</label>
                                <input type="text" class="form-control is-valid" id="validationServer01" value="<%=a.getEmail()%>" required>
                                <div class="valid-feedback">
                                    Looks good!
                                </div>
                            </div>
                            <div class="col-md-12">
                                <label for="validationServer03" class="form-label">Status</label>
                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"><%=a.getDescription()%></textarea>
                                <div id="validationServer03Feedback" class="invalid-feedback">
                                    Please provide a valid status .
                                </div>
                            </div>


                            <div class="col-12">
                                <button class="btn btn-primary" type="submit">Save</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
