<%-- 
    Document   : ManageContact
    Created on : May 21, 2024, 9:45:06 PM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Contact</title>
    </head>
    <body>
        <%@include file="Menu.jsp" %>
        <div class="col-10 bg-light dashboard border" id="list">
            <div id="menu_icon" onclick="toggleMenu()"><box-icon name='menu'></box-icon></div>
            <div class="mb-3 p-3 ">
                <h3 class="mb-3">
                    Manage Contact
                </h3>
                <form class="row g-3 needs-validation" novalidate action="ManageContactController" method="post">
                    <div class="col-md-7">
                        <label for="validationCustomUsername" class="form-label">Address</label>
                        <div class="input-group has-validation">
                            <input type="text" value=""class="form-control" id="validationCustomUsername" aria-describedby="inputGroupPrepend" required>
                            <div class="invalid-feedback">
                                Please choose a Address.
                            </div>
                        </div>
                    </div>

                    <div class="col-md-2">
                        <label for="validationCustomUsername" class="form-label">Hotline</label>
                        <div class="input-group has-validation">                          
                            <input type="tel" name="" value="" class="form-control" id="validationCustomUsername" aria-describedby="inputGroupPrepend" required>
                            <div class="invalid-feedback">
                                Please choose a Hotline.
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <label for="validationCustomUsername" class="form-label">Email</label>
                        <div class="input-group has-validation">
                            <input name="email" type="email" value="" class="form-control" id="validationCustomUsername" aria-describedby="inputGroupPrepend" required>
                            <div class="invalid-feedback">
                                Please choose a Email.
                            </div>
                        </div>
                    </div>      

                    <div class="col-12">
                        <button class="btn btn-danger" name="btn_save" type="submit">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
