<%-- 
    Document   : Login
    Created on : Mar 9, 2023, 5:59:39 PM
    Author     : bachv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <!--        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>-->
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
            }*/

            h1 {
                text-align: center;
            }

/*            input[type=text], input[type=password], input[type=email], input[type=date] {
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

            .login {
                margin-top: 20px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Login</h1>
            <form action="${pageContext.request.contextPath}/login" method="post">

                <section class="vh-100" style="background-color: #9A616D;">
                    <div class="container py-5 h-100">
                        <div class="row d-flex justify-content-center align-items-center h-100">
                            <div class="col col-xl-10">
                                <div class="card" style="border-radius: 1rem;">
                                    <div class="row g-0">
                                        <div class="col-md-6 col-lg-5 d-none d-md-block">
                                            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/img1.webp"
                                                 alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
                                        </div>
                                        <div class="col-md-6 col-lg-7 d-flex align-items-center">
                                            <div class="card-body p-4 p-lg-5 text-black">

                                                <form>

                                                    <div class="d-flex align-items-center mb-3 pb-1">
<!--                                                        <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>-->
                                                        <span class="h1 fw-bold mb-0">Login</span>
                                                    </div>

                                                    <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>

                                                    <div class="form-outline mb-4">
                                                        <input id="form2Example17" class="form-control form-control-lg" type="text" placeholder="Enter Account" name="account" required />
                                                        <label class="form-label" for="form2Example17">Account</label>
                                                    </div>

                                                    <div class="form-outline mb-4">
                                                        <input type="password" id="form2Example27" class="form-control form-control-lg" placeholder="Enter Password" name="password" required/>
                                                        <label class="form-label" for="form2Example27">Password</label>
                                                    </div>

                                                    <div class="pt-1 mb-4">
                                                        <button class="btn btn-dark btn-lg btn-block" type="submit">Login</button>
                                                    </div>

                                                    <a class="small text-muted" href="#!">Forgot password?</a>
                                                    <p class="mb-5 pb-lg-2" style="color: #393f81;">Don't have an account? <a href="${pageContext.request.contextPath}\view\signup.jsp"
                                                                                                                              style="color: #393f81;">Register here</a></p>
                                                    <a href="#!" class="small text-muted">Terms of use.</a>
                                                    <a href="#!" class="small text-muted">Privacy policy</a>
                                                </form>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

<!--                <label for="account"><b>Account:</b></label><br>
                <input type="text" placeholder="Enter Account" name="account" required><br>
                <label for="password"><b>Password:</b></label><br>
                <input type="password" placeholder="Enter Password" name="password" required><br>
                <button type="submit">Login</button>
            </form>
            <div class="login">
                Don't have an account? <a href="${pageContext.request.contextPath}\view\signup.jsp">Signup</a>
            </div>-->
        </div>
    </body>
</html>
