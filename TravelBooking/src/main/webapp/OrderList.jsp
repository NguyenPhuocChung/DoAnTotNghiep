<%-- 
    Document   : Manage User
    Created on : May 22, 2024, 1:00:30 PM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage User</title>

    </head>
    <body>
        <%@include file="Menu.jsp"%>
        <div class="col-10 bg-light dashboard border" id="list">
            <div id="menu_icon" onclick="toggleMenu()"><box-icon name='menu'></box-icon></div>
            <div class="mb-3 p-3 ">
                <h3 class="mb-3">
                    ORDER LIST              
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
                                <li><a class="dropdown-item" href="#">Not Confirm</a></li>
                                <li><a class="dropdown-item" href="#">Confirm</a></li>
                            </ul>
                        </div>

                        <form class="form-search">
                            <label class="label" for="search">Search for stuff</label>
                            <input class="search" id="search" type="search" placeholder="Search..." autofocus required />
                            <button class="go" type="submit">Go</button>    
                        </form>
                    </div>
                    <div>
                        <button class="btn btn-sm btn-outline-danger mt-3"><a href="/ProfileUserController/ShowOrderCancle">Show order cancle</a></button>
                    </div>
                </div>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col"></th>
                            <th scope="col">OrderID</th>
                            <th scope="col">DateBook</th>
                            <th scope="col">NameTour</th>
                            <th scope="col">CustomName</th>
                            <th scope="col">Phone</th>
                            <th scope="col">Email</th>
                            <th scope="col">Location</th>
                            <th scope="col">NumberPeople</th>
                            <th scope="col">TotalPrice</th>
                            <th scope="col">TypePay</th>
                            <th scope="col">Status</th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td scope="row"><input type="checkbox" id="check" name="check"/></td>
                            <td>1</td>
                            <td>16/05/2024</td>
                            <td class="content">Quy Nhon: Round-trip airfare + Room at 4-star Avani Quy Nhon Resort hotel (breakfast included)</td>
                            <td>Vu Ngoc Minh</td>
                            <td>0982275857</td>
                            <td>chungnpce170976@fpt.edu.vn</td>
                            <td>Ca mau</td>
                            <td>2 adult , 1 child</td>
                            <td>1000$</td>
                            <td>Credit</td>
                            <td><button class="btn-confirm_status border">Confirm</button></td>
                            <td><button class="btn-confirm border">Confirm</button> <button class="btn-cancle border mt-2">Cancle</button></td>
                        </tr>
                        <tr>
                            <td scope="row"><input type="checkbox" id="check" name="check"/></td>
                            <td>2</td>
                            <td>16/05/2024</td>
                            <td class="content">Quy Nhon: Round-trip airfare + Room at 4-star Avani Quy Nhon Resort hotel (breakfast included)</td>
                            <td>Nguyen Phuoc Chung</td>
                            <td>0982275857</td>
                            <td>chungnpce170976@fpt.edu.vn</td>
                            <td>Ca mau</td>
                            <td>2 adult , 1 child</td>
                            <td>1000$</td>
                            <td>Credit</td>
                            <td><button class="btn-confirm_status border">Confirm</button></td>
                            <td></td>
                        </tr>

                        <tr>
                            <td scope="row"><input type="checkbox" id="check" name="check"/></td>
                            <td>3</td>
                            <td>16/05/2024</td>
                            <td class="content">Quy Nhon: Round-trip airfare + Room at 4-star Avani Quy Nhon Resort hotel (breakfast included)</td>
                            <td>Trinh Quoc Minh</td>
                            <td>0982275857</td>
                            <td>chungnpce170976@fpt.edu.vn</td>
                            <td>Ca mau</td>
                            <td>2 adult , 1 child</td>
                            <td>1000$</td>
                            <td>Credit</td>
                            <td><button class="btn-confirm_status border">Confirm</button></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td scope="row"><input type="checkbox" id="check" name="check"/></td>
                            <td>4</td>
                            <td>16/05/2024</td>
                            <td class="content">Quy Nhon: Round-trip airfare + Room at 4-star Avani Quy Nhon Resort hotel (breakfast included)</td>
                            <td>Nguyen Phuoc Chung</td>
                            <td>0982275857</td>
                            <td>chungnpce170976@fpt.edu.vn</td>
                            <td>Ca mau</td>
                            <td>2 adult , 1 child</td>
                            <td>1000$</td>
                            <td>Credit</td>
                            <td><button class="btn-confirm_status border">Confirm</button></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td scope="row"><input type="checkbox" id="check" name="check"/></td>
                            <td>5</td>
                            <td>16/05/2024</td>
                            <td class="content">Quy Nhon: Round-trip airfare + Room at 4-star Avani Quy Nhon Resort hotel (breakfast included)</td>
                            <td>Nguyen Phuoc Chung</td>
                            <td>0982275857</td>
                            <td>chungnpce170976@fpt.edu.vn</td>
                            <td>Ca mau</td>
                            <td>2 adult , 1 child</td>
                            <td>1000$</td>
                            <td>Credit</td>
                            <td><button class="btn-confirm_status border">Confirm</button></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td scope="row"><input type="checkbox" id="check" name="check"/></td>
                            <td>6</td>
                            <td>16/05/2024</td>
                            <td class="content">Quy Nhon: Round-trip airfare + Room at 4-star Avani Quy Nhon Resort hotel (breakfast included)</td>
                            <td>Nguyen Phuoc Chung</td>
                            <td>0982275857</td>
                            <td>chungnpce170976@fpt.edu.vn</td>
                            <td>Ca mau</td>
                            <td>2 adult , 1 child</td>
                            <td>1000$</td>
                            <td>Credit</td>
                            <td><button class="btn-confirm_status border">Confirm</button></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td scope="row"><input type="checkbox" id="check" name="check"/></td>
                            <td>7</td>
                            <td>16/05/2024</td>
                            <td class="content">Quy Nhon: Round-trip airfare + Room at 4-star Avani Quy Nhon Resort hotel (breakfast included)</td>
                            <td>Nguyen Phuoc Chung</td>
                            <td>0982275857</td>
                            <td>chungnpce170976@fpt.edu.vn</td>
                            <td>Ca mau</td>
                            <td>2 adult , 1 child</td>
                            <td>1000$</td>
                            <td>Credit</td>
                            <td><button class="btn-confirm_status border">Confirm</button></td>
                            <td></td>
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
