<%-- 
    Document   : ProfilUser.jsp
    Created on : May 26, 2024, 9:12:10 PM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="bootstrap-5.3.3-dist/css/bootstrap.min.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>

        <title>Profile</title>
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
                <div><a href="ProfileUser.jsp">Setting</a><a class="mx-3" href="#">Notification</a><a class="text-decoration-underline" href="ChangePassword.jsp">Change Password</a></div>
            </div>
        </div>
        <div class="mt-2 d-flex container-fluid">
            <div class="col-3 border rounded p-2">
                <div class="d-flex"><img class="rounded-circle" src="img/NPC.png" alt="alt"/><p class="ps-3 pt-3 align-content-center">Nguyen Phuoc Chung</p></div>
                <div class="d-flex rounded bg-light p-2 px-2">
                    <box-icon name='heart-circle' color='#ff0000' ></box-icon><a href="#" class="px-2">Like tour</a>
                </div>
                <div class="d-flex rounded bg-light mt-2 p-2 px-2">
                    <box-icon name='purchase-tag' color='#ffe600' ></box-icon><a href="#" class="px-2">Promotion</a>
                </div>
            </div>
            <div class="col-9 border rounded ms-2 p-2">
                <div class="p-2">
                    <h3 class="">
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
                    <div class="float-end">
                        <button class="btn btn-primary">Change</button>
                        <button class="btn btn-danger">Fotgot password</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
    
</html>
