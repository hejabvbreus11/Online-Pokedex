<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: yaojiawei
  Date: 2018/4/8
  Time: 下午6:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Moves</title>
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
    <script type="text/javascript" src="js/jquery.simplePagination.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $(".movedetail").click(function () {
                $(this).nextAll("div:first").toggle();
                return false;
            });
            var page=window.location.href.substring(window.location.href.indexOf("=")+1,window.location.href.length);
            $(function() {
                $("#light-pagination").pagination({
                    items: 719,
                    itemsOnPage: 20,
                    cssStyle: 'light-theme',
                    hrefTextPrefix: "?page=",
                    displayedPages: 3,
                    edges: 1,
                    currentPage:page
                });
            });
        });
    </script>
</head>
<body style="background-image: url('img/back/back21.jpg');background-repeat:no-repeat;background-attachment:scroll;background-size:100% 100%;">
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
<div class="content" style="opacity:0.6;overflow:scroll;background: #ffffff;height: 670px;left: 272px;opacity: 0.8;position: absolute;top: 109px;width: 895px;">
    <div class="Moves col-md-12" style="padding-top: 15px;background-color: #ffff66">
        <div class="row">
            <h2 class="col-md-2" style="color:#0e2011;text-align: center">Moves</h2>
            <form class="form-inline col-md-5" role="form" action="/movesearch">
                <div class="form-group" style="margin-left:50px">
                    <label class="sr-only" for="name">name</label>
                    <input type="text" class="form-control" id="name" name="name"
                           placeholder="Move Name">
                </div>
                <button type="submit" class="btn btn-default" name="search">Search</button>
                <div><p style="color: red;font-size: medium">${errmessage}</p></div>
            </form>
            <div class="pagination-holder col-md-5 clearfix">
                <div id="light-pagination" class="pagination" style="margin-top:15px"></div>
            </div>
        </div>
    </div>
    <div class="Moves">
        <div class="row">
            <c:if test="${!movelist.equals(null)}">
                <c:forEach items="${movelist}" var="move">
                    <div class="col-md-2 text-center"><p>${move.getId()}</p></div>
                    <div class="col-md-6 text-center"><p>${move.getName()}</p></div>
                    <div class="col-md-2 text-center"><img src="img/type/${pokemon.upperCase(move.getType())}IC.gif" width="40"/></div>
                    <a class="hvr-pulse-grow movedetail col-mod-2 text-center" href="#"><img src="img/icon1.png"/></a>
                    <div class="col-md-12" style="background-color: #f9f9f9;display: none">
                        <div class="row">
                            <div class="col-md-3 text-center"><p>Accuracy:&nbsp;${move.getAccuracy()}</p></div>
                            <div class="col-md-3 text-center"><p>Effect Chance:&nbsp;${move.getEffect_chance()}</p></div>
                            <div class="col-md-3 text-center"><p>Strick Power:&nbsp;${move.getPower()}</p></div>
                            <div class="col-md-3 text-center"><p>PP:&nbsp;${move.getPp()}</p></div>
                            <div class="col-md-12 text-center"><p>${move.getEntry()}</p></div>
                        </div>
                    </div>
                </c:forEach>
            </c:if>
        </div>
    </div>
</div>


</body>
</html>
