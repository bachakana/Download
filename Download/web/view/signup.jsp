<%-- 
    Document   : Signup
    Created on : Mar 9, 2023, 5:59:49 PM
    Author     : bachv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup Page</title>
        <!-- Font Awesome -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
            />
        <!-- Google Fonts -->
        <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
            />
        <!-- MDB -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.css"
            rel="stylesheet"
            />
        <!-- MDB -->
        <script
            type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.js"
        ></script>
        <style>
            body {
                background-color: lightblue;
            }

            /*            .container {
                            margin: auto;
                            padding: 20px;
                            width: 50%;
                            border: 2px solid white;
                            text-align: center;
                        }
            
                        h1 {
                            text-align: center;
                        }
            
                        input[type=text], input[type=password], input[type=email], input[type=date] {
                            padding: 10px;
                            margin: 10px 0;
                            border: none;
                            border-radius: 5px;
                            width: 100%;
                            box-sizing: border-box;
                            font-size: 16px;
                        }
            
                        button {
                            background-color: white;
                            color: black;
                            padding: 10px 20px;
                            border: none;
                            border-radius: 5px;
                            cursor: pointer;
                            font-size: 16px;
                        }
            
                        button:hover {
                            background-color: #555;
                            color: white;
                        }*/
            @media (min-width: 1025px) {
                .h-custom {
                    height: 100vh !important;
                }
            }

            .login {
                margin-top: 20px;
            }
        </style>
    </head>
    <body>
        <div class="container">

            <section class="h-100 h-custom" style="background-color: #8fc4b7;">
                <div class="container py-5 h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-lg-8 col-xl-6">
                            <div class="card rounded-3">
                                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img3.webp"
                                     class="w-100" style="border-top-left-radius: .3rem; border-top-right-radius: .3rem;"
                                     alt="Sample photo">
                                <div class="card-body p-4 p-md-5">
                                    <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Registration Info</h3>

                                    <form class="px-md-2" action="${pageContext.request.contextPath}/signup" method="Post">

                                        <div class="form-outline mb-4">
                                            <input type="text" id="form3Example1q" class="form-control" placeholder="Enter Full Name" name="fullname" required/>
                                            <label class="form-label" for="form3Example1q">Full Name</label>
                                        </div>


                                        <div class="form-outline mb-4">
                                            <input type="text" id="form3Example1q" class="form-control" placeholder="Enter Account" name="account" required />
                                            <label class="form-label" for="form3Example1q">Account</label>
                                        </div>

                                        <div class="form-outline mb-4">
                                            <input id="password" class="form-control" type="password" placeholder="Enter Password" name="password" required />
                                            <label class="form-label" for="form3Example1q">Password</label>
                                        </div>

                                        <div class="form-outline mb-4">
                                            <input id="repassword" onchange="check()" class="form-control" type="password" placeholder="Re-enter Password" name="re-password" required />
                                            <label class="form-label" for="form3Example1q">Re-EnterPassword</label>
                                            <span id="error" style="color: red"></span>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6 mb-4">

                                                <div class="form-outline datepicker">
                                                    <label for="exampleDatepicker1" class="form">Birth Date</label>
                                                    <input type="date" name="birthdate" class="form-control" id="exampleDatepicker1" />

                                                </div>

                                            </div>

                                        </div>

                                        <button type="submit" class="btn btn-success btn-lg mb-1">Signup</button>

                                        <div class="login">
                                            Already have an account? <a href="${pageContext.request.contextPath}\view\login.jsp">Login</a>
                                        </div>

                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

<!--            <h1>Signup</h1>
            <form action="${pageContext.request.contextPath}/signup" method="Post">
                <label for="fullname"><b>Full Name:</b></label><br>
                <input type="text" placeholder="Enter Full Name" name="fullname" required><br>

                <label for="account"><b>Account:</b></label><br>
                <input type="text" placeholder="Enter Account" name="account" required><br>

                <label for="password"><b>Password:</b></label><br>
                <input type="password" placeholder="Enter Password" name="password" required><br>

                <label for="re-password"><b>Re-enter Password:</b></label><br>
                <input type="password" placeholder="Re-enter Password" name="re-password" required><br>

                <label for="birthdate"><b>Birthdate:</b></label><br>
                <input type="date" placeholder="Enter Birthdate" name="birthdate" required><br>

                <button type="submit">Signup</button>
            </form>
            <div class="login">
                Already have an account? <a href="${pageContext.request.contextPath}\view\login.jsp">Login</a>
            </div>-->
        </div>
            
            <script>
                function check(){
                    console.log("check");
                    var password = document.getElementById("password").value;
                    var repassword = document.getElementById("repassword").value;
                    console.log(password);
                    console.log(repassword);
                    if(password !== repassword){
                        document.getElementById("error").innerHTML = "repassword and password are not the same";
                    }else{
                        document.getElementById("error").innerHTML = "";
                    }
                }
            </script>
    </body>
</html>
