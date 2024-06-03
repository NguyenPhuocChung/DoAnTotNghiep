<%-- 
    Document   : Menu
    Created on : May 21, 2024, 9:46:09 PM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap-5.3.3-dist/css/bootstrap.min.css"/>
        <script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
        <script src="${pageContext.request.contextPath}/bootstrap-5.3.3-dist/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>

    </head>
    <style>
        *{
            padding: 0;
            margin: 0;

        }
        .icons{
            margin-right: 15px;

        }
        .space{
            padding-top: 4px;
            padding-bottom: 4px;
        }


        .tag-dashboard{
            border-radius: 5px;
            background:#ffffff;
        }
        img{
            width: 60px;
            height: 60px;
        }
        .increase{
            width: 20px;
            height: 20px;
        }
        .up-to{
            padding-left: 5px;
        }
        .point{
            width: 15px;
            height: 15px;
            margin-top: 5px;
        }
        a{
            text-decoration: none;
            color: black;
        }
        a:hover{
            text-decoration: underline #0a53be  ;

        }
        .form-search {
            position: relative;
            width: 30rem;
            background: var(--color-brand);
            border-radius: var(--rad);
        }
        .search, .go {
            height: var(--height);
            font-family: var(--font-fam);
            border: 0;
            color: var(--color-dark);
            font-size: 18px;
        }
        .form-search input[type="search"] {
            outline: 0;
            width: 100%;
            background: var(--color-light);
            padding: 0 1.6rem;
            border-radius: var(--rad);
            appearance: none;
            transition: all var(--dur) var(--bez);
            transition-property: width, border-radius;
            z-index: 1;
            position: relative;
        }
        .go {
            display: none;
            position: absolute;
            top: 0;
            right: 0;
            width: var(--btn-width);
            font-weight: bold;
            background: var(--color-brand);
            border-radius: 0 var(--rad) var(--rad) 0;
        }
        .form-search input:not(:placeholder-shown) {
            border-radius: var(--rad) 0 0 var(--rad);
            width: calc(100% - var(--btn-width));
            + button {
                display: block;
            }
        }
        .label {
            position: absolute;
            clip: rect(1px, 1px, 1px, 1px);
            padding: 0;
            border: 0;
            height: 1px;
            width: 1px;
            overflow: hidden;
        }
        .vertical-line {
            border-left: 2px solid #000;
            height: 70px;
        }

        .table th{
            background: #EEEEEE;
        }
        .table th,
        .table td, btn-confirm {
            font-size: 11px;

        }
        .btn-confirm_status{
            padding: 4px;
            border-radius: 5px;
            background: #0d6efd;
            color: white;
        }
        .btn-confirm{
            padding: 5px;
            border-radius: 5px;
            background: #0d6efd;
            color: white;
            font-size: 14px;
        }
        .btn-cancle{
            padding: 5px;
            border-radius: 5px;
            background: red;
            color: white;
            font-size: 14px;
        }
        .btn-refund{
            padding: 5px;
            border-radius: 5px;
            background: #198754;
            color: white;
            font-size: 14px;
        }
        #pagination {
            margin-top: 11px;
        }

        #pagination span {
            border-radius: 5px;
            background: white;
            cursor: pointer;
            border: #EEEEEE solid;
            padding: 11px 15px 11px 15px;
        }

        #pagination span.active {
            background: #4d4aef;
            color: white;
            padding: 11px 15px 11px 15px;
            font-weight: bold;
        }
        #menu_icon{
            display: none;
        }
        #popup{
            display: none;
        }
        .close{
            position: absolute;
            top:0;
            right: 0;
        }
        #changePassword{
            position: relative;
        }
        .save{
            position: relative;
        }
        #popupWrongConfirmPassword{
            display: none;
        }
        #popupWrongConfirmPassword > .mt-2 > img{
            width: 80px;
            height: 60px;
        }
        
        #poUpChangePasswordSucessfull{
            display: none;
        }
        #poUpChangePasswordSucessfull>div>img{
            width: 150px;
            height: 100px;
        }

    </style>
    <body>
        <div class="d-flex p-3">

            <div class="col-2 d-flex mt-2"> <h3 class="text-warning">Dash</h3><h3>Stack</h3></div>
            <div class=" d-flex col-8">
                <form class="form-search mt-3">
                    <label class="label" for="search">Search for stuff</label>
                    <input class="search" id="search" type="search" placeholder="Search..." autofocus required />
                    <button class="go" type="submit">Go</button>    
                </form>
            </div>
            <div class="col-2 d-flex">
                <img class="rounded-circle" src="img/NPC.png" alt="alt" style="width: 40px; height: 40px" />
                <p class="text-center align-content-center m-0 px-2">Nguyen Phuoc Chung</p>
                <div class="align-content-center mt-2"><box-icon name='exit'></box-icon></div>
            </div>
        </div>
        <div class="d-flex">
            <div class="col-md-2 bg-white p-3 border" id="menu">
                <div class="float-end" id="menu__icon" onclick="toggleMenu()"><box-icon name='menu'></box-icon></div>
                <div class="d-flex space"><div class="icons"><box-icon type='solid' name='dashboard'></box-icon></div> <p><a href="/ProfileUserController/DashBoard">DASHBOARD</a></p></div>
                <div class="d-flex"><div  class="icons"><box-icon type='solid' name='grid' ></box-icon></div><p><a href="#">MANAGE TOUR</a></p></div>
                <div class="d-flex space"><div  class="icons"><box-icon name='happy-heart-eyes'></box-icon></div><p><a href="#"> FAVORITES</a></p></div>
                <div class="d-flex"><div  class="icons"><box-icon name='messenger' type='logo' ></box-icon></div><p><a href="#"> MESSENGER</a></p></div>
                <div class="d-flex space"><div  class="icons"><box-icon name='list-check' ></box-icon></div><p><a href="/ProfileUserController/OrderList"> ORDER LIST</a></p></div>
                <div class="d-flex"><div  class="icons"><box-icon name='bell-ring' type='solid' ></box-icon></div><p><a href="#"> NOTIFICATION</a></p></div>
                <hr class="space"/>
                <div class="d-flex"><div  class="icons"><box-icon name='user'></box-icon></div><p><a href="/ProfileUserController/ManageUser">MANAGE USER</a> </p></div>
                <div class="d-flex space"><div  class="icons"><box-icon name='user-circle' type='solid' ></box-icon></div><p> <a href="/ProfileUserController/Profile">PROFILE</a></p></div>
                <div class="d-flex"><div  class="icons"><box-icon name='contact' type='solid' ></box-icon></div><p><a href="/ProfileUserController/ManageContact">MANAGE CONTACT</a></p></div>
            </div>

    </body>
    <script>
        function toggleMenu() {
            var element = document.getElementById('list');
            var menu = document.getElementById("menu");
            var menu__icon = document.getElementById("menu__icon");
            var menu_icon = document.getElementById("menu_icon");

            if (menu__icon.style.display === "block") {
                menu__icon.style.display = "none";
                menu.style.display = "block";
            } else if (menu_icon.style.display === "block") {
                menu_icon.style.display = "none";
                menu.style.display = "block";
                element.classList.replace('col-12', 'col-10');
            } else {
                menu_icon.style.display = "block";
                menu.style.display = "none";
                element.classList.replace('col-10', 'col-12');


            }
        }
    </script>
</html>