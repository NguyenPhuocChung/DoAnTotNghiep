<%-- 
    Document   : SettingProfileUser
    Created on : May 26, 2024, 10:15:08 PM
    Author     : nguye
--%>

<%@page import="DAO.ProfileUserDAO"%>
<%@page import="Model.ProfileUserModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Setting</title>
        <link rel="stylesheet" href="bootstrap-5.3.3-dist/css/bootstrap.min.css"/>
        <script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>
    </head>
    <style>

        a{
            text-decoration: none;
            color: grey;
        }
        img{
            width: 50px;
            height: 50px;
        }
    </style>
    <body>
        <div class="container-fluid">
            <div class="border rounded p-3">
                <h3>
                    Header
                </h3>
                <div><a href="#">Setting</a><a class="mx-3" href="#">Notification</a><a href="#">Change Password</a></div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="border rounded p-3">
                <h3>
                    Profile
                </h3>
                <div><a class="text-decoration-underline" href="ProfileUser.jsp">Setting</a><a class="mx-3" href="#">Notification</a><a href="ChangePassword.jsp">Change Password</a></div>
            </div>
        </div>
        <%
          
            ProfileUserModel a = (ProfileUserModel) session.getAttribute("profile");
        %>
        <div class="mt-2 d-flex container-fluid">
            <div class="d-flex border rounded bg-light">
                <div class="col-4 mt-3">
                    <div class="d-flex align-content-center justify-content-center mb-3">
                        <img class="rounded-circle" src="img/<%=a.getImage()%>" alt="alt"/>
                    </div>
                    <h4 class="text-center"><%=a.getUserName()%></h4>
                    <div class="d-flex align-content-center justify-content-center">
                        <div>
                            <p class="text-center m-0"><%=a.getNumberTourTaken()%></p>
                            <p class="text-center">Total tour<br/> booked</p>
                        </div>
                        <div class="m-3 border vertical-line"></div>
                        <div>
                            <p class="text-center m-0"><%=a.getPoint()%></p>
                            <p>Point</p>
                        </div>
                        <div class="m-3 border vertical-line"></div>

                        <div>
                            <p class="text-center m-0">101</p>
                            <p>Like tour</p>
                        </div>
                    </div>

                    <div class="text-center">
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
                <div class="col-7 border bg-white p-3 m-3">
                    <form class="row g-3">
                        <div class="col-md-6">
                            <label for="validationServer01" class="form-label">Full name</label>
                            <input type="text" class="form-control is-valid" id="validationServer01" value="<%=a.getUserName()%>" required>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>

                        <div class="col-md-4">
                            <label for="validationServer02" class="form-label">Date</label>
                            <input type="date" class="form-control is-valid" id="validationServer02" value="<%=a.getBirthday()%>" required>

                        </div>
                        <div class="col-md-6">
                            <label for="validationServer03" class="form-label">Status</label>
                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"><%=a.getDescription()%> </textarea>
                            <div id="validationServer03Feedback" class="invalid-feedback">
                                Please provide a valid status .
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="validationServer01" class="form-label">Gmail</label>
                            <input type="text" class="form-control is-valid" id="validationServer01" value="<%=a.getEmail()%>" required>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>

                        <div class="col-md-5">
                            <label for="validationServer03" class="form-label">Avatar</label>
                            <input type="file" class="form-control" id="validationServer04" aria-describedby="validationServer04sFeedback" required>                          
                            <div id="validationServer04Feedback" class="invalid-feedback">
                                Please select a valid avatar.
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
