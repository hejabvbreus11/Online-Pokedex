<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Pokedex</title>
    <link rel="shortcut icon" href="img/pokemon.ico">
    <script src="js/new.js"></script>
    <link rel="stylesheet" href="css/pokedex.css" />
    <link rel="stylesheet" href="css/main.css" />
    <script data-main="js/pokedex.js" src="js/require.js"></script>
    <script src="js/jquery.js"></script>
    <link rel="stylesheet" href="css/gus.css" media="all" type="text/css"/>
    <link rel="stylesheet" href="css/gus_integration.css" />
    <link rel="stylesheet" href="css/hover.css" />
    <link href="http://g.alicdn.com/bui/bui/1.1.21/css/bs3/bui.css" rel="stylesheet">
</head>
<body style="background-image: url('img/back/back5.jpg');background-repeat:no-repeat;background-attachment:scroll;background-size:100% 100%;">
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
    <div class="container pokedex">
        <section class="section pokedex-results overflow-visible">
            <ul class="results" style="height:auto">
                <c:forEach items="${pokemons}" var="pokemon">
                <li class="animating" style="opacity:1;top:0px;left:0px;transform:matrix(1,0,0,1,0,0,);">
                    <figure>
                        <a class="PokemonDetail" href="#" id="${pokemon.getId()}/${pokemon.getName()}">
                            <img class="hvr-glow poke-image" src="${pokemon.getUrl()}" />
                        </a>
                    </figure>
                    <div class="notch-collectibles-small">
                        <div class="collectibles-wrapper">
                            <div class="collectibles-collection">
                                <a class="hvr-float-shadow" href="javascript:void(0);"><img src="img/pokeball/PokeBall.png" /></a>
                            </div>
                            <div class="collectibles-wishlist">
                                <a class="hvr-float-shadow" id="cry${pokemon.getId()}" href="javascript:void(0);">
                                    <img src="img/pokeball/GreatBall.png">
                                </a>
                                <script type="text/javascript">
                                $(document).ready(function(){
                                  $("#cry${pokemon.getId()}").hover(function(){
                                    var audio=new Audio("https://play.pokemonshowdown.com/audio/cries/${pokemon.getName()}.mp3");
                                    audio.play();
                                  });
                                });
                                </script>
                            </div>
                            <div class="collectibles-trade">
                                <a class="hvr-float-shadow" href="javascript:void(0);"><img src="img/pokeball/UltraBall.png"></a>
                            </div>
                        </div>
                    </div>
                    <div class="pokemon-info">
                        <h5 class="id">
                            <span class="number-prefix">#</span>
                            ${pokemon.getId()}&nbsp;&nbsp;&nbsp;${pokemon.getName()}
                        </h5>
                        <div class="abilities">
                            <span class="pill"><img src="img/type/${pokemon.upperCase(pokemon.getType().split("/")[0])}IC.gif" width="40" length="20"/></span>
                        </div>
                        <c:if test="${pokemon.testType()}">
                        <div class="abilities">
                            <span class="pill"><img src="img/type/${pokemon.upperCase(pokemon.getType().split("/")[1])}IC.gif" width="40" length="20"/></span>
                        </div>
                        </c:if>
                    </div>
                </li>
                </c:forEach>
            </ul>
            </ul>
        </section>
    </div>
</div>


<div class="demo-content">
    <style>
        .bui-stdmod-body{
            overflow-x : hidden;
            overflow-y : auto;
        }
    </style>
    <script src="http://g.tbcdn.cn/fi/bui/jquery-1.8.1.min.js"></script>
    <script src="http://g.alicdn.com/bui/seajs/2.3.0/sea.js"></script>
    <script src="http://g.alicdn.com/bui/bui/1.1.21/config.js"></script>

    <!-- script start -->
    <script type="text/javascript">
        BUI.use(['bui/overlay','bui/mask'],function(Overlay){
            var dialog = new Overlay.Dialog({
                title:'',
                width:900,
                height:700,
                loader : {
                    url : 'pokemon',
                    autoLoad : false, //不自动加载
                    params : {a : 'a'},//附加的参数
                    lazyLoad : false, //不延迟加载
                },
                mask:true,
                buttons:[],
                success:function () {
                }
            });
            //dialog.show();
            var count = 0;
            $('.PokemonDetail').on('click',function () {
                dialog = new Overlay.Dialog({
                    title:$(this).attr("id"),
                    width:900,
                    height:700,

                    loader : {
                        url : 'pokemon?id='+$(this).attr("id").substring(0,$(this).attr("id").indexOf("/")),
                        autoLoad : false, //不自动加载
                        params : {a : 'a'},//附加的参数
                        lazyLoad : true, //不延迟加载
                    },
                    mask:true,
                    buttons:[],
                    success:function () {
                    }
                });
                dialog.show();
                dialog.get('loader').load({a : count});
                count++;
                return false;
            });
        });
    </script>
    <!-- script end -->
</div>

</body>
</html>
