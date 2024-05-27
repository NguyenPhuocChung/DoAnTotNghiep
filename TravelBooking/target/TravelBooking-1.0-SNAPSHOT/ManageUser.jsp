<%-- 
    Document   : ManageUser
    Created on : May 23, 2024, 2:32:13 PM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Users</title>
    </head>
    <body>
        <%@include file="Menu.jsp" %>
        <div class="col-10 bg-light dashboard border" id="list">
            <div id="menu_icon" onclick="toggleMenu()"><box-icon name='menu'></box-icon></div>
            <div class="mb-3 p-3 ">
                <h3 class="mb-3">
                    Manage User              
                </h3>
                <div class=" d-flex justify-content-between">
                    <div class="d-flex my-3">
                        <div class="dropdown me-3">
                            <button class="btn btn-sm btn-light border dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                OrderID
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Action</a></li>
                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                            </ul>
                        </div>

                        <div class="dropdown">
                            <button class="btn btn-sm btn-light border dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Status
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">On_Going</a></li>
                                <li><a class="dropdown-item" href="#">Lock</a></li>
                            </ul>
                        </div>

                        <form class="form-search">
                            <label class="label" for="search">Search for stuff</label>
                            <input class="search" id="search" type="search" placeholder="Search..." autofocus required />
                            <button class="go" type="submit">Go</button>    
                        </form>
                    </div>
                   
                </div>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col"></th>
                            <th scope="col">User ID</th>
                            <th scope="col">User Name</th>
                            <th scope="col">Email</th>
                            <th scope="col">Images</th>
                            <th scope="col">Phone</th>
                            <th scope="col">Birthday</th>
                            <th scope="col">Gender</th>
                            <th scope="col">Point</th>
                            <th scope="col">N_TourTaken</th>
                            <th scope="col">Status</th>
                            <th scope="col">Date Login</th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td scope="row"><input type="checkbox" id="check" name="check"/></td>
                            <td>1</td>
                            <td>Nguyen Phuoc Chung</td>
                            <td class="content">Chungnpce170976@fpt.edu.vn</td>
                            <td><img src="img/NPC.png" alt="alt"/></td>
                            <td>0982275857</td>
                            <td>16/09/2002</td>
                            <td>Nam</td>
                            <td>2</td>
                            <td>2</td>
                            <td>16/09/2001</td>
                            <td><button class="btn-confirm_status border">On-Going</button></td>
                            <td><button class="btn-confirm border">On-going</button> <button class="btn-cancle border mt-2">Lock</button></td>
                        </tr>
                        <tr>
                            <td scope="row"><input type="checkbox" id="check" name="check"/></td>
                            <td>2</td>
                            <td>Nguyen Phuoc Chung</td>
                            <td class="content">Chungnpce170976@fpt.edu.vn</td>
                            <td><img src="img/7036984.png" alt="alt"/></td>
                            <td>0982275857</td>
                            <td>16/09/2002</td>
                            <td>Nam</td>
                            <td>2</td>
                            <td>2</td>
                            <td>16/09/2001</td>
                            <td><button class="btn-confirm_status border">On-Going</button></td>
                            <td><button class="btn-confirm border">On-going</button> <button class="btn-cancle border mt-2">Lock</button></td>
                        </tr>

                        <tr>
                            <td scope="row"><input type="checkbox" id="check" name="check"/></td>
                            <td>3</td>
                            <td>Nguyen Phuoc Chung</td>
                            <td class="content">Chungnpce170976@fpt.edu.vn</td>
                            <td><img src="img/7036984.png" alt="alt"/></td>
                            <td>0982275857</td>
                            <td>16/09/2002</td>
                            <td>Nam</td>
                            <td>2</td>
                            <td>2</td>
                            <td>16/09/2001</td>
                            <td><button class="btn-confirm_status border">On-Going</button></td>
                            <td><button class="btn-confirm border">On-going</button> <button class="btn-cancle border mt-2">Lock</button></td>
                        </tr>
                        <tr>
                            <td scope="row"><input type="checkbox" id="check" name="check"/></td>
                            <td>4</td>
                            <td>Nguyen Phuoc Chung</td>
                            <td class="content">Chungnpce170976@fpt.edu.vn</td>
                            <td><img src="img/7036984.png" alt="alt"/></td>
                            <td>0982275857</td>
                            <td>16/09/2002</td>
                            <td>Nam</td>
                            <td>2</td>
                            <td>2</td>
                            <td>16/09/2001</td>
                            <td><button class="btn-confirm_status border">On-Going</button></td>
                            <td><button class="btn-confirm border">On-going</button> <button class="btn-cancle border mt-2">Lock</button></td>
                        </tr>
                        <tr>
                            <td scope="row"><input type="checkbox" id="check" name="check"/></td>
                            <td>5</td>
                            <td>Nguyen Phuoc Chung</td>
                            <td class="content">Chungnpce170976@fpt.edu.vn</td>
                            <td><img src="img/7036984.png" alt="alt"/></td>
                            <td>0982275857</td>
                            <td>16/09/2002</td>
                            <td>Nam</td>
                            <td>2</td>
                            <td>2</td>
                            <td>16/09/2001</td>
                            <td><button class="btn-confirm_status border">On-Going</button></td>
                            <td><button class="btn-confirm border">On-going</button> <button class="btn-cancle border mt-2">Lock</button></td>
                        </tr>
                        <tr>
                            <td scope="row"><input type="checkbox" id="check" name="check"/></td>
                            <td>6</td>
                            <td>Nguyen Phuoc Chung</td>
                            <td class="content">Chungnpce170976@fpt.edu.vn</td>
                            <td><img src="img/7036984.png" alt="alt"/></td>
                            <td>0982275857</td>
                            <td>16/09/2002</td>
                            <td>Nam</td>
                            <td>2</td>
                            <td>2</td>
                            <td>16/09/2001</td>
                            <td><button class="btn-confirm_status border">On-Going</button></td>
                            <td><button class="btn-confirm border">On-going</button> <button class="btn-cancle border mt-2">Lock</button></td>
                        </tr>
                        <tr>
                            <td scope="row"><input type="checkbox" id="check" name="check"/></td>
                            <td>7</td>
                            <td>Nguyen Phuoc Chung</td>
                            <td class="content">Chungnpce170976@fpt.edu.vn</td>
                            <td><img src="img/7036984.png" alt="alt"/></td>
                            <td>0982275857</td>
                            <td>16/09/2002</td>
                            <td>Nam</td>
                            <td>2</td>
                            <td>2</td>
                            <td>16/09/2001</td>
                            <td><button class="btn-confirm_status border">On-Going</button></td>
                            <td><button class="btn-confirm border">On-going</button> <button class="btn-cancle border mt-2">Lock</button></td>
                        </tr>
                    </tbody>
                </table>
                <div class="d-flex justify-content-center align-content-center">
                    <button class="btn btn-primary pt-2" id="prevPage"><box-icon name='chevron-left'></box-icon></button>
                    <div id="pagination" class="mx-3"></div>
                    <button class="btn btn-warning pt-2" id="nextPage"><box-icon name='chevron-right'></box-icon></button>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="pagination.js"></script>

</html>
