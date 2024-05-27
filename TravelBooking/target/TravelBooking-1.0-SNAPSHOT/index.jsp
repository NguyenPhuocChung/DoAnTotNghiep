<%-- 
    Document   : Profile.jsp
    Created on : May 14, 2024, 2:05:26 PM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Product</title>
    </head>
    <body>
        <%@include file="Menu.jsp" %>
        <div class="col-10 bg-light dashboard border">
            <div class="mb-3 p-3 ">
                <h3 class="mb-3">
                    Profile
                </h3>
                <div class="col-10 bg-light dashboard border">
                    <div class="p-3 ">
                        <h3 class="mb-3">
                            Profile
                        </h3>
                        <div class="d-flex align-content-center justify-content-center me-2">
                            <div class="col-4">
                                <div class="d-flex align-content-center justify-content-center mb-3">
                                    <img class="rounded-circle" src="img/NPC.png" alt="alt"/>
                                </div>
                                <h4 class="text-center">Nguyen Phuoc Chung</h4>
                                <div class="d-flex align-content-center justify-content-center">
                                    <div>
                                        <p class="text-center m-0">21</p>
                                        <p class="text-center">Total tour<br/> booked</p>
                                    </div>
                                    <div class="mx-3 border vertical-line"></div>
                                    <div>
                                        <p class="text-center m-0">238</p>
                                        <p>Point</p>
                                    </div>
                                    <div class="mx-3 border vertical-line"></div>

                                    <div>
                                        <p class="text-center m-0">101</p>
                                        <p>Like tour</p>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-center align-content-center">
                                    <button class="btn btn-secondary"><a class="text-white">Upload New Avatar</a></button>
                                </div>
                                <div class="text-center">
                                    <p>16/09/2002</p>
                                    <p>I’m web designer, I work in programs like figma, adobe photoshop, adobe illustrators</p>
                                </div>
                                <div class="text-center">
                                    <p class="m-0">Day create account</p>
                                    <p>16/09/2002</p>
                                </div>
                            </div>
                            <div class="col-8 border bg-white p-3">
                                <form class="row g-3">
                                    <div class="col-md-4">
                                        <label for="validationServer01" class="form-label">First name</label>
                                        <input type="text" class="form-control is-valid" id="validationServer01" value="Mark" required>
                                        <div class="valid-feedback">
                                            Looks good!
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="validationServer02" class="form-label">Last name</label>
                                        <input type="text" class="form-control is-valid" id="validationServer02" value="Otto" required>
                                        <div class="valid-feedback">
                                            Looks good!
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label for="validationServer02" class="form-label">Date</label>
                                        <input type="date" class="form-control is-valid" id="validationServer02" value="Otto" required>

                                    </div>
                                    <div class="col-md-6">
                                        <label for="validationServer03" class="form-label">Status</label>
                                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                                        <div id="validationServer03Feedback" class="invalid-feedback">
                                            Please provide a valid status .
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

            </div>
        </div>
    </div>
</body>
</html>
