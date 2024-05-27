<%-- 
    Document   : DashBoard
    Created on : May 20, 2024, 10:01:09 AM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DashBoard</title>
    </head>

    <body>
        <%@include file="Menu.jsp" %>
       <div class="col-10 bg-light dashboard border" id="list">
            <div id="menu_icon" onclick="toggleMenu()"><box-icon name='menu'></box-icon></div>
            <div class="mb-3 p-3">
                <h3 class="mb-3">
                    DASHBOARD
                </h3>
                <div class="row">
                    <div class="tag-dashboard shadow col">
                        <div class="row">
                            <div class="col p-2">
                                <p class="font-weight-bold">Total User</p>
                                <h2>1,000</h2>
                            </div>
                            <div class="col">
                                <img src="${pageContext.request.contextPath}/img/7036984.png" alt="alt"/>
                            </div>

                        </div>
                        <div class="d-flex"><img class="increase" src="${pageContext.request.contextPath}/img/increate.png" alt="alt"/><p class="up-to m-0 text-success">8.5% Up from yesterday</p></div>
                    </div>
                    <div class="tag-dashboard shadow col mx-1">
                        <div class="row">
                            <div class="col p-2">
                                <p class="font-weight-bold">Total Order</p>
                                <h2>10,000</h2>
                            </div>
                            <div class="col">
                                <img src="${pageContext.request.contextPath}/img/listorder.png" alt="alt"/>
                            </div>

                        </div>
                        <div class="d-flex"><img class="increase" src="${pageContext.request.contextPath}/img/decreate.png" alt="alt"/><p class="up-to m-0 text-danger">8.5% Down from yesterday</p></div>

                    </div>
                    <div class="tag-dashboard shadow col">
                        <div class="row">
                            <div class="col p-2">
                                <p class="font-weight-bold">Total Sales</p>
                                <h2>40,000$</h2>
                            </div>
                            <div class="col">
                                <img src="${pageContext.request.contextPath}/img/sales.png" alt="alt"/>
                            </div>

                        </div>
                        <div class="d-flex"><img class="increase" src="${pageContext.request.contextPath}/img/decreate.png" alt="alt"/><p class="up-to m-0 text-danger">8.5% Down from yesterday</p></div>
                    </div>
                    <div class="tag-dashboard mx-1 shadow col">
                        <div class="row">
                            <div class="col p-2">
                                <p class="font-weight-bold">Total Pending</p>
                                <h2>20,000$</h2>
                            </div>
                            <div class="col">
                                <img src="${pageContext.request.contextPath}/img/pending.png" alt="alt"/>
                            </div>

                        </div>
                        <div class="d-flex"><img class="increase" src="img/increate.png" alt="alt"/><p class="up-to m-0 text-success">8.5% Up from yesterday</p></div>

                    </div>
                </div>
            </div>
            <div class="rounded bg-white m-1 p-3 shadow d-flex ">
                <div style="width:100%;max-width:80%">
                    <h3>CHART</h3>
                    <canvas id="myChart"></canvas>
                </div>
                <div class="align-content-center p-3">
                    <div class="d-flex">
                        <div class="rounded-circle bg-warning point"></div>
                        <p class="mx-2">Sales</p>
                    </div>
                    <div class="d-flex">
                        <div class="rounded-circle bg-danger point" ></div>
                        <p class="mx-2">User</p>
                    </div>
                    <div class="d-flex">
                        <div class="rounded-circle bg-primary point"></div>
                        <p class="mx-2">Pending</p>
                    </div>
                    <div class="d-flex">
                        <div class="rounded-circle bg-success point"></div>
                        <p class="mx-2">Order</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script>
    const xValues = [100, 200, 300, 400, 500, 600, 700, 800, 900, 1000];
    new Chart("myChart", {
        type: "line",
        data: {
            labels: xValues,
            datasets: [{
                    data: [860, 1140, 1060, 1060, 1070, 1110, 1330, 2210, 7830, 2478],
                    borderColor: "red",
                    fill: false
                }, {
                    data: [1600, 1700, 1700, 1900, 2000, 2700, 4000, 5000, 6000, 7000],
                    borderColor: "green",
                    fill: false
                }, {
                    data: [300, 700, 2000, 5000, 6000, 4000, 2000, 1000, 200, 100],
                    borderColor: "blue",
                    fill: false
                }, {
                    data: [200, 900, 1000, 5200, 600, 4000, 200, 1060, 300, 150],
                    borderColor: "yellow",
                    fill: false
                }]
        },
        options: {
            legend: {display: false}
        }
    });
</script>

</html>
