<%-- 
    Document   : EnterCodeOTP
    Created on : Jun 1, 2024, 8:56:52 PM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enter OTP Code</title>
        <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />
        <style>


            :where(.container, form, .input-field, header) {
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
            }
            .container {
                background: #fff;
                padding: 30px 65px;
                border-radius: 12px;
                row-gap: 20px;
                box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
            }
            .container header {
                height: 65px;
                width: 65px;
                background: #4070f4;
                color: #fff;
                font-size: 2.5rem;
                border-radius: 50%;
            }
            .container h4 {
                font-size: 1.25rem;
                color: #333;
                font-weight: 500;
            }
            form .input-field {
                flex-direction: row;
                column-gap: 10px;
            }
            .input-field input {
                height: 45px;
                width: 42px;
                border-radius: 6px;
                outline: none;
                font-size: 1.125rem;
                text-align: center;
                border: 1px solid #ddd;
            }
            .input-field input:focus {
                box-shadow: 0 1px 0 rgba(0, 0, 0, 0.1);
            }
            .input-field input::-webkit-inner-spin-button,
            .input-field input::-webkit-outer-spin-button {
                display: none;
            }
            form button {
                margin-top: 25px;
                width: 100%;
                color: #fff;
                font-size: 1rem;
                border: none;
                padding: 9px 0;
                cursor: pointer;
                border-radius: 6px;
                pointer-events: none;
                background: #6e93f7;
                transition: all 0.2s ease;
            }
            form button.active {
                background: #4070f4;
                pointer-events: auto;
            }
            form button:hover {
                background: #0e4bf1;
            }
        </style>
    </head>
    <body>
        <%@include file="Menu.jsp" %>
        <div class="col-10 bg-light dashboard border">
            <div class="mb-3 p-3">
                <h3 class="mb-5"><a href="/ProfileUserController/Profile">Profile/</a><a href="/ProfileUserController/ChangePasswordAdmin"> Change Password/ </a><a>OTP</a>
                </h3>
                <div class="container">
                    <header>
                        <i class="bx bxs-check-shield"></i>
                    </header>
                    <h4>Enter OTP Code</h4>
                    <form action="ProfileUserController" method="post" >
                        <div class="input-field">
                            <input  class="otp" name="number1" type="number" />
                            <input class="otp" name="number2" type="number" disabled />
                            <input class="otp" name="number3" type="number" disabled />
                            <input class="otp" name="number4" type="number" disabled />
                        </div>
                        <button name="btn_verify" class="btn_verify mb-3">Verify OTP</button>
                        <div class="d-flex"><p>00:00:0</p><p id="timeView"></p></div>
                    </form>
                </div>
            </div>
        </div>

    </div>
    <script>
        const inputs = document.querySelectorAll(".otp"),
                button = document.querySelector(".btn_verify");

        inputs.forEach((input, index1) => {
            input.addEventListener("keyup", (e) => {
                const currentInput = input,
                        nextInput = input.nextElementSibling,
                        prevInput = input.previousElementSibling;

                if (currentInput.value.length > 1) {
                    currentInput.value = "";
                    return;
                }
                if (nextInput && nextInput.hasAttribute("disabled") && currentInput.value !== "") {
                    nextInput.removeAttribute("disabled");
                    nextInput.focus();
                }
                if (e.key === "Backspace") {
                    inputs.forEach((input, index2) => {
                        if (index1 <= index2 && prevInput) {
                            input.setAttribute("disabled", true);
                            input.value = "";
                            prevInput.focus();
                        }
                    });
                }
                if (!inputs[3].disabled && inputs[3].value !== "") {
                    button.classList.add("active");
                    return;
                }
                button.classList.remove("active");
            });
        });

        window.addEventListener("load", () => inputs[0].focus());
        // cai dat gio nhap ma otp
        let count = Number(document.getElementById("timeView").innerHTML);
        const timeoutId = setInterval(function () {
            document.getElementById('timeView').innerHTML = ++count;
            if (count > 3) {
                clearTimeout(timeoutId);
            }
        }, 1000);
    </script>
</body>
</html>
