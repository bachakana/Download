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
        <style>
            body {
			background-color: lightblue;
		}

		.container {
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
		}

		.login {
			margin-top: 20px;
		}
	</style>
    </head>
    <body>
        <div class="container">
        <h1>Login</h1>
	<form action="${pageContext.request.contextPath}/login" method="post">
	<label for="account"><b>Account:</b></label><br>
	<input type="text" placeholder="Enter Account" name="account" required><br>
	<label for="password"><b>Password:</b></label><br>
	<input type="password" placeholder="Enter Password" name="password" required><br>
	<button type="submit">Login</button>
        </form>
            <div class="login">
             Don't have an account? <a href="${pageContext.request.contextPath}\view\signup.jsp">Signup</a>
            </div>
        </div>
</body>
</html>
