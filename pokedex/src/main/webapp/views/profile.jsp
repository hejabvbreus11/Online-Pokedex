<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: yaojiawei
  Date: 2018/4/10
  Time: 下午8:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile</title>
    <link rel="shortcut icon" href="img/pokemon.ico">
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap-grid.min.css" />
    <link rel="stylesheet" href="css/hover.css" />
    <script src="js/new.js"></script>
    <link rel="stylesheet" href="css/pokedex.css" />
    <link type="text/css" rel="stylesheet" href="css/simplePagination.css"/>
    <link rel="stylesheet" href="css/main.css" />
    <script data-main="js/pokedex.js" src="js/require.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
    <link rel="stylesheet" href="css/gus.css" media="all" type="text/css"/>
    <link rel="stylesheet" href="css/gus_integration.css" />
    <link rel="stylesheet" href="css/profile/style.css" />
</head>
<body style="background-image: url('img/back/back27.jpg');background-repeat:no-repeat;background-attachment:scroll;background-size:100% 100%;">
<nav class="main">
    <div class="blocker"></div>
    <div class="content-wrapper">

        <ul data-analytics-label="primary-nav">
            <li class="home">
                <a href="index"
                   target="_self"
                   data-content-id=""
                   data-content-type="Sidebar"
                   data-content-variation="sidebarLeft"
                   data-content-location=""
                   data-content-category=""
                   data-content-download=""
                   class="hvr-glow hvr-float">
                    <span class="fill"></span>
                    <span class="icon">
                        <img src="img/center/1.png" width="40px" length="40px"/>
                    </span>
                    <span class="title">Home</span>
                </a>
            </li>

            <li class="explore">
                <a href="pokedex?page=1"
                   target="_self"
                   data-content-id=""
                   data-content-type="Sidebar"
                   data-content-variation="sidebarLeft"
                   data-content-location=""
                   data-content-category=""
                   data-content-download=""
                   class="hvr-glow hvr-float">
                    <span class="fill"></span>
                    <span class="icon">
                        <img src="img/center/2.png" width="40px" length="40px"/>
                    </span>
                    <span class="title">Pokedex</span>
                </a>
            </li>

            <li class="watch">
                <a href="#"
                   target="_self"
                   data-content-id=""
                   data-content-type="Sidebar"
                   data-content-variation="sidebarLeft"
                   data-content-location=""
                   data-content-category=""
                   data-content-download=""
                   class="hvr-glow hvr-float">
                    <span class="fill"></span>
                    <span class="icon">
                        <img src="img/center/3.png" width="40px" length="40px"/>
                    </span>
                    <span class="title">Item</span>
                </a>
            </li>

            <li class="play">
                <a href="moves?page=1"
                   target="_self"
                   data-content-id=""
                   data-content-type="Sidebar"
                   data-content-variation="sidebarLeft"
                   data-content-location=""
                   data-content-category=""
                   data-content-download=""
                   class="hvr-glow hvr-float">
                    <span class="fill"></span>
                    <span class="icon">
                        <img src="img/center/4.png" width="40px" length="40px"/>
                    </span>
                    <span class="title">Moves</span>
                </a>
            </li>



            <li class="trade">
                <a href="search"
                   target="_self"
                   data-content-id=""
                   data-content-type="Sidebar"
                   data-content-variation="sidebarLeft"
                   data-content-location=""
                   data-content-category=""
                   data-content-download=""
                   class="hvr-glow hvr-float">
                    <span class="fill"></span>
                    <span class="icon">
                        <img src="img/center/5.png" width="40px" length="40px"/>
                    </span>
                    <span class="title">Top 10 Search</span>
                </a>
            </li>

            <li class="game">
                <a href="profile"
                   target="_self"
                   data-content-id=""
                   data-content-type="Sidebar"
                   data-content-variation="sidebarLeft"
                   data-content-location=""
                   data-content-category=""
                   data-content-download=""
                   class="hvr-glow hvr-float">
                    <span class="fill"></span>
                    <span class="icon">
                                <img src="img/character/Red9.png" width="40px" length="40px"/>
                            </span>
                    <span class="title">${session.getAttribute("username")}</span>
                </a>
            </li>

            <li class="attend last-item">
                <a href ="logout"
                   target="_self"
                   data-content-id=""
                   data-content-type="Sidebar"
                   data-content-variation="sidebarLeft"
                   data-content-location=""
                   data-content-category=""
                   data-content-download=""
                   class="hvr-glow hvr-float">
                    <span class="fill"></span>
                    <span class="icon">
                                <img src="img/character/Red7.png" width="40px" length="40px"/>
                            </span>
                    <span class="title">Log out</span>
                </a>
            </li>
        </ul>
    </div>
</nav>
<div class="content" style="opacity:0.6;overflow:scroll;background: #ffffff;height: 670px;left: 272px;opacity: 0.8;position: absolute;top: 100px;width: 895px;">
    <div class="nav">
        <ul id="menu">
            <li><a href="#" class="home">Home<span></span></a></li>
            <li><a href="#" class="about">About<span></span></a></li>
            <li><a href="#" class="rss">RSS<span></span></a></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-6" style="border: #0F9E5E">
            <h3>Personal</h3>
            <hr />
            <h4>Username:</h4><p>${session.getAttribute("username")}</p>
            <h4>Gender:</h4><p>${session.getAttribute("currentuser").getGender()}</p>
            <h4>Birth Date:</h4><p>${session.getAttribute("currentuser").getBirthdate()}</p>
            <h4>Phone:</h4><p>${session.getAttribute("currentuser").getPhone()}</p>
            <h4>Email:</h4><p>${session.getAttribute("currentuser").getEmail()}</p>
            <h4>Address:</h4><p>${session.getAttribute("currentuser").getAddr()}</p>
            <h4>User Group:</h4><p>Generation:&nbsp;${session.getAttribute("currentuser").getFav_generation()}</p>
            <h4>User Authority:</h4><p>${session.getAttribute("role")}</p>
            <br />
            <h3>Moment</h3>
            <hr />
            <br />
            <h3>Share</h3>
            <hr />
            <br />
            <h3>Diary</h3>
            <hr />
        </div>
        <div class="col-md-3" style="border: #9bcc50">
            <h3>Image</h3>
            <hr />
            <c:if test="${session.getAttribute(\"currentuser\").getGender().equals(\"boy\")}">
                <img src="img/character/Blue2.png" width="100px" />
            </c:if>
            <c:if test="${session.getAttribute(\"currentuser\").getGender().equals(\"girl\")}">
                <img src="img/character/Dawn4.png" width="100px" />
            </c:if>
            <br />
            <h3>Friends:</h3><p>Not get any friend yet.</p>
            <hr />
        </div>
    </div>
</div>


</body>
</html>

