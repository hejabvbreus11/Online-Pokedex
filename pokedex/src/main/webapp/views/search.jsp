<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: yaojiawei
  Date: 2018/4/12
  Time: 下午2:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Top 10 Search</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=IE8" />
    <link rel="shortcut icon" href="img/pokemon.ico">
    <link rel="stylesheet" href="/css/search/font-awesome.css" />
    <link rel="stylesheet" href="/css/search/panels.css" />
    <link rel="stylesheet" href="/css/search/main.css" />
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <link rel="stylesheet" href="/css/search/utilchart.css" />
    <link rel="stylesheet" href="/css/search/pokedex.css" />
    <script type="text/javascript" src="js/search/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="js/search/lodash.min.js"></script>


</head>
<body>
<div style="position: absolute;margin-left: 1350px;margin-top: 5px">
    <a href="javascript:history.go(1);"><img src="img/nav/arrow5.png" width="45px"/></a>
</div>
<div style="position: absolute;margin-left: 665px;margin-top: 5px">
    <a href="pokedex?page=1" name="back"><img src="img/pokedex.png" width="60px"/></a>
</div>
<div style="position: absolute;margin-left: 15px;margin-top: 5px">
    <a href="javascript:history.go(-1);"><img src="img/nav/arrow4.png" width="45px"/></a>
</div>
<div class="pfx-panel" style="background-image: url('img/back/back8.jpg');background-repeat:no-repeat;background-attachment:scroll;background-size:100% 100%;position: absolute; top: 51px; left: 0px; right: 0px; bottom: 0px; width: auto; height: auto; overflow: auto; display: block;">
    <div class="pfx-body" style="margin-left: auto; margin-right: auto; max-width: 639px;">
        <form class="pokedex" action="/searchbyparam">
            <h1><a href="/" data-target="replace">Pokedex</a></h1>
            <ul class="tabbar centered" style="margin-bottom: 18px">
                <li>
                    <button class="button nav-first">Search</button>
                </li>
                <li>
                    <button class="button nav-last cur" value="pokemon/">Pokemon</button>
                </li>
            </ul>
            <div class="searchboxwrapper">
                <input class="textbox searchbox" id="param" name="param" autocomplete="off" autofocus="" placeholder="Search pokemon OR filter by type, move, ability" style="padding: 2px 2px 2px 77px;" type="search" />
                    <div class="searchbox-filters">
                        <button class="filter noclear" value=":">Pokemon</button>
                    </div>
                <p style="color: red">${errormessage}</p>
            </div>
        </form>
        <div class="results">
            <ul class="utilichart" style="height:1500px">
                <li class="result">
                    <div class="sortrow">
                        <button  class="sortcol numsortcol cur">Sort</button>
                        <a href="/searchbyorder?order_field=name" name="name" class="sortcol pnamesortcol" data-sort="name">Name</a>
                        <a href="#" class="sortcol typesortcol" data-sort="type">Type</a>
                        <a href="#" class="sortcol abilitysortcol" data-sort="ability">Abilities</a>
                        <a href="/searchbyorder?order_field=hp" name="hp" class="sortcol statsortcol" data-sort="hp">HP</a>
                        <a href="/searchbyorder?order_field=attack" name="atk" class="sortcol statsortcol" data-sort="atk">Atk</a>
                        <a href="/searchbyorder?order_field=defense" name="def" class="sortcol statsortcol" data-sort="def">Def</a>
                        <a href="/searchbyorder?order_field=sp_attack" name="spatk" class="sortcol statsortcol" data-sort="spa">Spa</a>
                        <a href="/searchbyorder?order_field=sp_defense" name="spdef" class="sortcol statsortcol" data-sort="spd">Spd</a>
                        <a href="/searchbyorder?order_field=speed" name="spd"  class="sortcol statsortcol" data-sort="spe">Spe</a>
                        <a href="#" class="sortcol statsortcol" data-sort="bst">BST</a>
                    </div>
                </li>
                <c:forEach items="${pokemons}" var="pokemon">
                    <li class="result">
                        <a class="" href="pokemon?id=${pokemon.getId()}">
                            <span class="col numcol">#${pokemon.getId()}</span>
                            <span class="col iconcol">
                                <span style="background:transparent url(img/smicons-sheet.png) no-repeat scroll -${pokemon.toX()}px -${pokemon.toY()}px"></span>
                            </span>
                            <span class="col pokemonnamecol" style="white-space:nowrap">${pokemon.getName()}</span>
                            <span class="col typecol">
                                <img src="img/type/sm/${pokemon.upperCase(pokemon.getType().split("/")[0])}.png" alt="${pokemon.upperCase(pokemon.getType().split("/")[0])}" width="32px" height="14px">
                                <c:if test="${pokemon.testType()}">
                                    <img src="img/type/sm/${pokemon.upperCase(pokemon.getType().split("/")[1])}.png" alt="${pokemon.upperCase(pokemon.getType().split("/")[1])}" width="32px" height="14px">
                                </c:if>
                            </span>
                            <span class="col abilitycol">${pokemon.getAbilities().split("/")[0].substring(0,pokemon.getAbilities().split("/")[0].indexOf("("))}</span>
                            <span class="col abilitycol">
                                <c:if test="${pokemon.testAbilities()}">
                                    ${pokemon.getAbilities().split("/")[1].substring(0,pokemon.getAbilities().split("/")[1].indexOf("("))}
                                </c:if>
                            </span>
                            <span class="col statcol">
                                <em>HP</em><br />${pokemon.getHp()}
                            </span>
                            <span class="col statcol">
                                <em>Atk</em><br />${pokemon.getAttack()}
                            </span>
                            <span class="col statcol">
                                <em>Def</em><br />${pokemon.getDefense()}
                            </span>
                            <span class="col statcol">
                                <em>Spa</em><br />${pokemon.getSp_attack()}
                            </span>
                            <span class="col statcol">
                                <em>Spd</em><br />${pokemon.getSp_defense()}
                            </span>
                            <span class="col statcol">
                                <em>Spe</em><br />${pokemon.getSpeed()}
                            </span>
                            <span class="col bstcol">
                                <em>BST</em><br />${pokemon.getSum()}
                            </span>
                        </a>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
</div>
</body>
</html>
