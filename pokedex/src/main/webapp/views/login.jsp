<%--
  Created by IntelliJ IDEA.
  User: yaojiawei
  Date: 2018/4/6
  Time: 下午6:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="shortcut icon" href="img/pokemon.ico">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel="stylesheet" href="css/form/style.css">
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>
    <script  src="js/form/index.js"></script>
</head>
<body>
<video autoplay loop poster="img/back1.jpg" id="bgvid">

    <source src="img/video/back4.mp4" type="video/mp4">

</video>
    <div class="container">
        <h2>Login</h2>
        <form id="sign-form" class="sign-form" action="/loginpost">
            <ol class="questions">
                <li>
                    <span><label>First Name</label></span>
                    <input class="active" id="fname" name="fname" type="text" placeholder="Enter your first name" autofocus/>
                    <div class="err"><p>${errmassage}</p></div>
                </li>
                <li>
                    <span><label for="password">Password</label></span>
                    <input id="viewpswd" type="text" placeholder="this your password"/>
                    <input id="password" name="password" type="password" placeholder="make sure you don't forget" autofocus/>
                    <span id="show-pwd" class="view"></span>
                </li>
                <li>
                    <button name="login" style="alignment;width: 108px;height: 51px;display: block;background: url(img/Login_en.png) no-repeat top left;border-style: none;border-width: 0px;cursor: pointer;color: transparent" type="submit"></button>
                </li>
            </ol>
        <div id="next-page" alt="Kiwi standing on oval"></div>
        <div class="error-message"></div>
        </form>
    </div>

</body>
</html>
