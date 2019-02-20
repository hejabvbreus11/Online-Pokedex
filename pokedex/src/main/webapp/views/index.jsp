<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Welcome to Pokemon World!</title>
    <link rel="shortcut icon" href="img/pokemon.ico">
    <script src="js/new.js"></script>
    <link rel="stylesheet" href="css/pokedex.css" />
    <link rel="stylesheet" href="css/main.css" />
    <script data-main="js/pokedex.js" src="js/require.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
    <link rel="stylesheet" href="css/gus.css" media="all" type="text/css"/>
    <link rel="stylesheet" href="css/gus_integration.css" />
    <link rel="stylesheet" href="css/hover.css" />
    <link href="http://g.alicdn.com/bui/bui/1.1.21/css/bs3/bui.css" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.min.css" />
</head>
<body style="background-image: url('img/back/back23.jpg');background-repeat:no-repeat;background-attachment:scroll;background-size:100% 100%;">
    <nav class="main">
        <div class="blocker"></div>
        <div class="content-wrapper">

            <ul data-analytics-label="primary-nav">
                <c:if test="${!session.getAttribute(\"isset\")}">
                    <li class="home">
                        <a href="form"
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
                                <img src="img/Rosa.png" width="40px" length="40px"/>
                            </span>
                            <span class="title">Signup</span>
                        </a>
                    </li>
                </c:if>

                <li class="explore">
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

                <li class="watch">
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

                <li class="play">
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
                            <img src="img/center/4.png" width="40px" length="40px"/>
                        </span>
                        <span class="title">Item</span>
                    </a>
                </li>



                <li class="trade">
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
                            <img src="img/center/5.png" width="40px" length="40px"/>
                        </span>
                        <span class="title">Moves</span>
                    </a>
                </li>

                <li class="game">
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
                            <img src="img/center/6.png" width="40px" length="40px"/>
                        </span>
                        <span class="title">Top 10 Search</span>
                    </a>
                </li>

                <c:if test="${session.getAttribute(\"isset\")}">
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
                </c:if>

                <c:if test="${session.getAttribute(\"isset\")}">
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
                </c:if>

                <c:if test="${!session.getAttribute(\"isset\")}">
                    <li class="attend last-item">
                        <a href="login"
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
                                <img src="img/Nate.png" width="40px" length="40px"/>
                            </span>
                            <span class="title">Login</span>
                        </a>
                    </li>
                </c:if>
            </ul>
        </div>
    </nav>
    <div class="content" style="opacity:0.6;overflow:scroll;background: #ffffff;height: 670px;left: 272px;opacity: 0.8;position: absolute;top: 109px;width: 895px;">
        <h2 style="margin-top: 50px">Welcom to Pokedex!</h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h3 style="color:red">${session.getAttribute("errms")}</h3>
        <hr style="background-color: #cccccc;border: 0;height: 1px;margin-bottom: 18px;margin-top: 0;width: 100%;" />
        <table border="0">
            <tr>
                <td width="600px"><p style="color: black">The Pokedex (Pokemon Zukan) is an electronic device designed to catalogue and provide information regarding the various species of Pokemon featured in the Pokemon video game, anime and manga series. The name pokedex is a neologism including "Pokemon" (which itself is a portmanteau of "pocket" and "monster") and "index". The Japanese name is simply "Pokemon Encyclopedia", and it can feature every Pokemon on it, depending on the Pokedex. </p></td>
                <td><img src="img/pokedex1.gif" width="150px" style="margin-left: 50px"/></td>
            </tr>
        </table>
        <hr style="background-color: #cccccc;border: 0;height: 1px;margin-bottom: 18px;margin-top: 0;width: 100%;" />
        <h2 style="margin-top: 50px">Game</h2>
        <hr style="background-color: #cccccc;border: 0;height: 1px;margin-bottom: 18px;margin-top: 0;width: 100%;" />
        <table border="0">
            <tr>
                <td width="150px">
                    <img src="img/game.png" width="150px" style="margin-left: 20px"/>
                    <img src="img/game1.png" width="150px" style="margin-left: 20px"/>
                    <img src="img/game2.png" width="150px" style="margin-left: 20px"/>
                    <img src="img/game3.png" width="150px" style="margin-left: 20px"/>
                    <img src="img/game4.png" width="150px" style="margin-left: 20px"/>
                    <img src="img/game5.png" width="150px" style="margin-left: 20px"/>
                    <img src="img/game6.png" width="150px" style="margin-left: 20px"/>
                    <img src="img/game7.png" width="150px" style="margin-left: 20px"/>
                    <img src="img/game8.png" width="150px" style="margin-left: 20px"/>
                    <img src="img/game9.png" width="150px" style="margin-left: 20px"/>
                    <img src="img/game10.png" width="150px" style="margin-left: 20px"/>
                    <img src="img/game11.png" width="150px" style="margin-left: 20px"/>
                </td>
                <td width="600px">
                    <p style="color: black">In the video games, whenever a Pokemon is first captured, its data will be added to a player's Pokedex. People who have an Action Replay can use a cheat so they can get all Pokedex entries without even having the Pokemon. In the Pokemon anime, the Pokedex is a comprehensive, electronic, reference encyclopedia, usually referred to in order to deliver information necessary to the plot. There are four differently-numbered Pokedex modes to date: the Kanto Pokedex, introduced in Pokemon Red and Blue; the Johto Pokedex, introduced in Pokemon Gold and Silver; the Hoenn Pokedex, introduced in Pokemon Ruby and Sapphire and expanded upon in Pokemon FireRed and LeafGreen; and the Sinnoh Pokedex, introduced in Pokemon Diamond and Pearl, the Unova Pokedex, introduced in Pokemon Black and White and updated in Pokemon Black 2 and White 2 and the Kalos Pokedex, which is split into Central Kalos, Mountain Kalos and Coastal Kalos based on the location in the region introduced in Pokemon X and Y.</p>
                    <br />
                    <p style="color: black">With each generation of Pokemon games, the Pokedex has more advanced features compared to previous versions. For example, later versions of the Pokedex are able to sort the list of Pokemon based on internal numbering or alphabetical order. However, every version of the Pokedex has the ability to sort the list of Pokemon based on a National Pokedex numbering, as well as the numbering for their own region. </p>
                    <br />
                    <p style="color: black">Each game has a different style of Pokedex, somewhat resembling the handheld it was released on. In Pokemon Red and Blue, it is held vertically, like the Game Boy. The Pokedex in Pokemon Gold and Silver is also held vertically like a Game Boy Color. In Pokemon Ruby and Sapphire, it is held horizontally, like a Game Boy Advance. The one in Pokemon FireRed and LeafGreen is horizontal with a fliptop, like a Game Boy Advance SP (although the GBA SP is actually vertical in design). The Pokedex in Pokemon Diamond and Pearl resembles a Nintendo DS Lite, with two screens and a microphone on the hinge.  </p>
                    <br />
                    <p style="color: black">In the Pokemon continuity, the Pokedex was invented by Professor Oak, a respected professor in the science of Pokemon. However, later on, it was mentioned that the Pokedex entries were written by Professor Westwood of the Seafoam Islands. The movie Pokemon 4Ever explains how Professor Oak travels into the future when he is a small child and Ash Ketchum gives him the idea to create the Pokedex. The Pokedex is given to you by Professor Oak, Elm, Birch, Rowan, Juniper, or Sycamore in the video games at the beginning of your journey.  </p>
                    <br />
                    <p style="color: black">In addition, the term "Pokedex" has expanded to refer to any comprehensive guide to Pokemon in the video games, more specifically, a listing of Pokemon detailing information such as their stats, locations found, moves learned, and Egg Groups. Numerous versions of this type of Pokedex can be found both online (i.e. on serebii.net) and in printed book form (i.e. the Prima Pocket Pokedex). This detailed information also includes height, weight, species type, and a short description of the Pokemon.  </p>
                    <br />
                    <p style="color: black">The reward for filling the entire Pokedex is a special diploma from the in-game Game Freak staff, who make a cameo appearance in each of the games. Additionally, in Pokemon Emerald, by obtaining all 201 Pokemon that appear in Hoenn and finishing the Hoenn Pokedex, the player earns a Totodile, Cyndaquil, or Chikorita from Professor Birch, though it is not necessary to catch the legendaries.   </p>
                    <br />
                    <p style="color: black">In Pokemon Gold, Silver, and Crystal, there is an Unown Pokedex. This is an extension of the regular Pokedex, which shows the player's progress in catching all of the various Unown Pokemon. Completing the Unown Pokedex allows the player to print messages displayed in the Unown alphabet using a Game Boy printer. In the HeartGold and SoulSilver games, the Unown Pokedex makes a return, but is now known as the Unown Report. It can be obtained by speaking with a researcher in the Ruins of Alph house.   </p>
                    <br />
                    <p style="color: black">The National 'Dex was introduced in Pokemon Ruby and Sapphire, allowing the player to record the data of Pokemon not naturally found in Hoenn (other than trading one from Pokemon Colosseum). In Pokemon Ruby and Sapphire, the National 'Dex is obtained simply by trading a Pokemon that is not native to Hoenn, upon which the Pokedex automatically upgrades to the National 'Dex. In Pokemon Emerald, the National 'Dex is obtained automatically after defeating the Elite Four for the first time. In Pokemon FireRed and LeafGreen the National 'Dex is earned by beating the Elite Four and catching a total of 60 Pokemon. In Pokemon Diamond and Pearl, the National 'Dex is obtained by having seen all Pokemon in the Sinnoh Pokedex, excluding Manaphy. In Platinum, you get it after seeing 210 Pokemon in Sinnoh, including Manaphy.   </p>
                    <br />
                    <p style="color: black">The Sinnoh Pokedex resembles a Nintendo DS Lite. The touch screen feature in Diamond and Pearl may be used to scroll up and down the list of Pokemon.    </p>
                    <br />
                </td>
            </tr>
        </table>
        <hr style="background-color: #cccccc;border: 0;height: 1px;margin-bottom: 18px;margin-top: 0;width: 100%;" />
        <h2 style="margin-top: 50px">Gallery</h2>
        <hr style="background-color: #cccccc;border: 0;height: 1px;margin-bottom: 18px;margin-top: 0;width: 100%;" />
        <table border="0" style="margin-left: 15px">
            <tr>
                <th width="222px"><img src="img/pokedex/pokedex1.png" width="160"></th>
                <th width="222px"><img src="img/pokedex/pokedex2.png" width="160"></th>
                <th width="222px"><img src="img/pokedex/pokedex3.png" width="160"></th>
                <th width="222px"><img src="img/pokedex/pokedex4.png" width="160"></th>
            </tr>
            <tr>
                <th>Kanto Pokedex (RGBYL)</th>
                <th>Johto Pokedex (GSC)</th>
                <th>Hoenn Pokedex (RSE)</th>
                <th>Kanto Pokedex (FRLG)</th>
            </tr>
            <tr>
                <th width="222px"><img src="img/pokedex/pokedex5.png" width="160"></th>
                <th width="222px"><img src="img/pokedex/pokedex6.png" width="160"></th>
                <th width="222px"><img src="img/pokedex/pokedex7.png" width="160"></th>
                <th width="222px"><img src="img/pokedex/pokedex8.png" width="160"></th>
            </tr>
            <tr>
                <th>Sinnoh Pokedex (DP)</th>
                <th>Sinnoh Pokedex (Pt)</th>
                <th>Johto Pokedex (HGSS)</th>
                <th>Unova Pokedex (BWB2W2)</th>
            </tr>
            <tr>
                <th width="222px"><img src="img/pokedex/pokedex9.png" width="160"></th>
                <th width="222px"><img src="img/pokedex/pokedex10.png" width="160"></th>
                <th width="222px"><img src="img/pokedex/pokedex11.jpg" width="160"></th>
                <th width="222px"></th>
            </tr>
            <tr>
                <th>Pokedex XY Kalos Pokedex (XY)</th>
                <th>Kalos Pokedex (ORAS)</th>
                <th>Pokedex of Alola Rotom Pokedex (SM)</th>
                <th></th>
            </tr>
        </table>
    </div>
</body>
</html>
