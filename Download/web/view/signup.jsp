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
		<h1>Signup</h1>
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
		</div>
	</div>
    </body>
</html>
