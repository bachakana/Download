<%-- 
    Document   : Home
    Created on : Mar 5, 2023, 5:28:48 PM
    Author     : bachv
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Downme.com</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
            header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 1rem;
                background-color: #f2f2f2;
            }
            .logo img {
                width: 150px;
            }
            form {
                display: flex;
                flex-grow: 1;
                max-width: 800px;
                margin: 0 auto;
                background-color: #ffffff;
                border: 1px solid #cccccc;
                border-radius: 5px;
                padding: 0.5rem;
            }
            input[type="text"] {
                flex-grow: 1;
                border: none;
                font-size: 1.2rem;
            }
            input[type="submit"] {
                background-color: #4CAF50;
                color: white;
                border: none;
                padding: 0.5rem 1rem;
                border-radius: 5px;
                font-size: 1.2rem;
                cursor: pointer;
            }

            body {
                background-color: lightblue;
            }
            .menu {
                display: flex;
                justify-content: space-between;
                align-items: center;
                list-style: none;
                padding: 10px;
                margin: 0;
                background-color: #3498db;
                border: 1px solid #fff;
                border-radius: 5px;
            }
            .menu li {
                margin-right: 20px;
            }
            .menu li:last-child {
                margin-right: 0;
            }
            .menu a {
                display: flex;
                align-items: center;
                justify-content: center;
                text-decoration: none;
                color: #fff;
                font-size: 20px;
                height: 50px;
                width: 100%;
            }
            .menu img {
                margin-right: 10px;
                width: 30px;
                height: 30px;
            }

            .box {
                display: inline-block;
                width: 200px;
                height: 150px;
                margin: 10px;
                padding: 10px;
                background-color: #e6f2ff;
                border: 2px solid #99ccff;
                text-align: center;
            }
            .box a {
                text-decoration: none;
                color: black;
                font-weight: bold;
            }
            .container {
                max-width: 800px;
                margin: 0 auto;
                padding: 20px;
            }
            .image-list {
                list-style: none;
                padding: 0;
                margin: 0;
            }
            .image-list li {
                border: 1px solid #ccc;
                background-color: white;
                padding: 20px;
                margin-bottom: 20px;
                display: flex;
                align-items: center;
            }
            .image-list li img {
                max-width: 100px;
                margin-right: 20px;
            }
            .image-list li h2 {
                margin: 0;
                font-size: 24px;
                font-weight: normal;
                flex-grow: 1;
            }
            .image-list li p {
                margin: 0;
                font-size: 16px;
                color: #666;
                margin-top: 10px;
            }
            .image-list li span {
                font-size: 14px;
                color: #666;
            }
            .download-link {
                margin-left: auto;
                padding: 10px 20px;
                background-color: #003366;
                color: white;
                border-radius: 4px;
                text-decoration: none;
                transition: background-color 0.3s ease;
            }
            .download-link:hover {
                background-color: #002147;
            }
            h1 {
                margin: 0;
                text-align: center;
            }
        </style>
    </head>
    <body>        
        <header>
            <div class="logo">
                <form id="logout" action="logout" method="get">
                    <a href="#" onclick="logout()"> Hello ${sessionScope.account.getUser().getUser_fullname()}</a>

                </form>
            </div>
<!--            <form>
                <input  id="txtSearch" oninput="searchByName(this)" type="text" name="query" placeholder="Search...">
                <input type="submit" value="Search">
            </form>-->


        </header>
<!--        <ul class="menu">
            <li><a href="#" onclick="TypeFile('image')">Image</a></li>
            <li><a href="#" onclick="TypeFile('game')">Game</a></li>
            <li><a href="#" onclick="TypeFile('music')">Music</a></li>
            <li><a href="#" onclick="TypeFile('flim')">Film</a></li>
            <li><a href="#" onclick="TypeFile('software')">Software</a></li>
            <li><a href="#" onclick="TypeFile('document')">Document</a></li>
        </ul>-->

        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Navbar</a>
                <button
                    class="navbar-toggler"
                    type="button"
                    data-mdb-toggle="collapse"
                    data-mdb-target="#navbarTogglerDemo02"
                    aria-controls="navbarTogglerDemo02"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                    >
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="#" onclick="TypeFile('image')">Image</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" onclick="TypeFile('game')">Game</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" onclick="TypeFile('music')">Music</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" onclick="TypeFile('flim')">Flim</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" onclick="TypeFile('software')">Software</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" onclick="TypeFile('document')">Document</a>
                        </li>
                    </ul>

                    <form class="d-flex input-group w-auto">
                        <input oninput="searchByName(this)" type="text" name="query" placeholder="Search..."
                            
                            class="form-control"
                            aria-label="Search"
                            />
                        <button
                            class="btn btn-outline-primary"
                            type="button"
                            data-mdb-ripple-color="dark"
                            >
                            Search
                        </button>
                    </form>
                </div>
            </div>
        </nav>
        <div id="content">
            <h1>Most Downloaded Files</h1>
            <c:forEach items="${requestScope.top5download}" var="element">
                <div class="container">

                    <div class="card">
                        <!--                        <div class="card-header">Featured</div>-->
                        <div class="card-body">
                            <h5 class="card-title">${element.getFile_name()}</h5>
                            <p class="card-text">${element.getFile_desc()}</p>
                            <a href="#" class="btn btn-primary" onclick="downloadwithFile_Id(${element.getFile_id()})">Download</a>
                        </div>
                    </div>

                    <!--                    <ul class="image-list">
                                            <li>				
                                                <div>
                                                    <h2>${element.getFile_name()}</h2>
                                                    <p>${element.getFile_desc()}</p>				
                                                </div>
                                                <a href="#" class="download-link" onclick="downloadwithFile_Id(${element.getFile_id()})">Download</a>
                                            </li>
                                        </ul>-->
                </div>
            </c:forEach>
            <h1>Available for Download Now</h1>
            <c:forEach items="${requestScope.top6nonelike}" var="element">
                <div class="container">

                    <div class="card">
                        <!--                        <div class="card-header">Featured</div>-->
                        <div class="card-body">
                            <h5 class="card-title">${element.getFile_name()}</h5>
                            <p class="card-text">${element.getFile_desc()}</p>
                            <a href="#" class="btn btn-primary" onclick="downloadwithFile_Id(${element.getFile_id()})">Download</a>
                        </div>
                    </div>

                    <!--                    <ul class="image-list">
                                            <li>				
                                                <div>
                                                    <h2>${element.getFile_name()}</h2>
                                                    <p>${element.getFile_desc()}</p>				
                                                </div>
                                                <a href="#" class="download-link" onclick="downloadwithFile_Id(${element.getFile_id()})">Download</a>
                                            </li>
                                        </ul>-->
                </div>
            </c:forEach>
        </div>

        <script >
            function searchByName(param) {
                var search = param.value;
                $.ajax({
                    url: "/project1/search",
                    type: "GET",
                    data: {
                        status: "search",
                        txtSearch: search
                    },
                    success: function (data) {
                        var row = document.getElementById("content");
                        row.innerHTML = data;
                    },
                    error: function (xhr) {

                    }
                });
            }
            function TypeFile(param) {
                $.ajax({
                    url: "/project1/search",
                    type: "GET",
                    data: {
                        status: param
                    },
                    success: function (data) {
                        var row = document.getElementById("content");
                        row.innerHTML = data;
                    },
                    error: function (xhr) {

                    }
                });
            }
            function logout() {
                if (confirm('Do you want to logout?', {okLabel: 'Yes', cancelLabel: 'No'})) {
                    document.getElementById("logout").submit();
                } else {
                    // User clicked 'No'
                }
            }
            function downloadwithFile_Id(id) {
                $.ajax({
                    url: "/project1/download",
                    type: "GET",
                    data: {
                        id: id
                    },
                    success: function (data) {
                        if (data === "limited") {
                            alert("Your download time on this day is limited!!");
                        } else {
                            window.location.assign(data);

                        }
                    },
                    error: function (xhr) {

                    }
                });
            }
        </script>
    </body>

</html>
