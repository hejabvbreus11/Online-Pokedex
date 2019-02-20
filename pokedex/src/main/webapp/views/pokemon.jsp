<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: yaojiawei
  Date: 2018/3/30
  Time: 下午5:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content="CSYE 6220"/>
    <meta name="author" content="yao.jiaw@husky.neu.edu"/>
    <title>Pokemon</title>
    <link rel="shortcut icon" href="img/pokemon.ico">
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap-grid.min.css" />
    <script type="text/javascript" src="js/jquery.js"></script>
    <link rel="stylesheet" href="css/hover.css" />
    <style type="text/css">
        .load{
            position: absolute;
            top: 50%;
            left: 50%;
            -webkit-transform: translate(-50%, -50%);
            -moz-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            -o-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
            }
    </style>
</head>
<body>
<div class="load">
    <img  src="img/pikachu.gif" width="45px" length="45px"/>&nbsp;&nbsp;loading...
</div>
<div class="mainbody">
    <div class="container">
        <div class="row">
            <div class="Title col-md-12" style="padding-top: 25px;background-color: #ff8000">
                <h1 style="color:#FFFFFF;text-align: center">${pokemon.getName()}</h1>
            </div>
            <div class="content">
                <div class="row">
                    <div class="image col-md-2">
                        <img src="${pokemon.getUrl2()}" width="150px" length="150px" />
                    </div>
                    <div class="abilities col-md-2" style="padding-top: 65px">
                            <div class="ability text-center">
                                <span><img src="img/type/${pokemon.upperCase(pokemon.getType().split("/")[0])}IC.gif" width="50px" length="25px"/></span>
                            </div>
                        <c:if test="${pokemon.testType()}">
                            <div class="ability text-center">
                                <span><img src="img/type/${pokemon.upperCase(pokemon.getType().split("/")[1])}IC.gif" width="50px" length="25px"/></span>
                            </div>
                        </c:if>
                    </div>
                    <div class="entries col-md-8 text-center" style="padding-top: 65px">
                        <p>${pokemon.getFlavor_text_entries()}</p>
                    </div>
                </div>
            </div>
            <div class="Title col-md-12" style="padding-top: 15px;background-color: #0F9E5E">
                <h3 style="color:#FFFFFF;text-align: center">Profile</h3>
            </div>
            <div class="profile">
                <div class="row">
                    <div class="col-md-3"><p>Height:</p></div>
                    <div class="col-md-3"><p>${pokemon.getHeight()*0.1}&nbsp;m</p></div>
                    <div class="col-md-3"><p>Weitht:</p></div>
                    <div class="col-md-3"><p>${pokemon.getWeight()}&nbsp;kg</p></div>
                    <div class="col-md-3"><p>Catch Rate:</p></div>
                    <div class="col-md-3"><p>${pokemon.getCapture_rate()}</p></div>
                    <div class="col-md-3"><p>Gender Rate(♀):</p></div>
                    <div class="col-md-3"><p>${pokemon.getGender_rate()}</p></div>
                    <div class="col-md-3"><p>Hatch Steps:</p></div>
                    <div class="col-md-3"><p>${pokemon.getHatch_counter()}</p></div>
                    <div class="col-md-3"><p>Base Experience:</p></div>
                    <div class="col-md-3"><p>${pokemon.getBase_experience()}</p></div>
                    <div class="col-md-3"><p>Base Happiness:</p></div>
                    <div class="col-md-3"><p>${pokemon.getBase_happiness()}</p></div>
                    <div class="col-md-3"><p>Habitat:</p></div>
                    <div class="col-md-3"><p>${pokemon.getHabitat()}</p></div>
                    <div class="col-md-3"><p>Abilities:</p></div>
                    <div class="col-md-9"><p>${pokemon.getAbilities()}</p></div>
                </div>
            </div>
            <div class="Title col-md-12" style="padding-top: 15px;background-color: #603578">
                <h3 style="color:#FFFFFF;text-align: center">Base Stats</h3>
            </div>
            <div class="Stats row">
                <div class="progressbar col-md-3">
                    <iframe src="http://localhost:8080/stats?id=${pokemon.getId()}" width="600px" height="480px" scrolling="no" frameborder="0" vspace=100 hspace=0></iframe>
                </div>
                <div class="demo-content col-md-2 offset-md-4">
                    <button class="btn hvr-glow" id="update" onclick="update(this)">Rendering</button>
                    <div class="detail-section">
                        <div id="canvas">

                        </div>
                    </div>

                    <script src="http://g.tbcdn.cn/bui/acharts/1.0.18/acharts.js"></script>

                    <script type="text/javascript">
                        $(document).ready(function() {
                            $('.mainbody').hide();
                            $('.load').show();
                            var t = setTimeout("$('.load').hide();$('.mainbody').show();", 2000);
                        });

                        function update(obj){
                            var id = $("#pokemonid").val();
                            $("#update").attr("style","display:none;");
                            var d = {"username":"jarvis","id":id};
                            $.ajax({
                                url: "update",
                                data: JSON.stringify(d),
                                dataType: "json",
                                type: "POST",
                                contentType: "application/json;charset=utf-8",
                                success: function(response){
                                    if(response.success){
                                        var hp=JSON.parse(response.message).hp;
                                        var atk=JSON.parse(response.message).atk;
                                        var def=JSON.parse(response.message).def;
                                        var sp_atk=JSON.parse(response.message).sp_atk;
                                        var sp_def=JSON.parse(response.message).sp_def;
                                        var spd=JSON.parse(response.message).spd;
                                        var name=JSON.parse(response.message).pokemonname;
                                        var maxnum=Math.max(hp,atk,def,sp_atk,sp_def,spd);
                                        var max=0;
                                        /*<![CDATA[*/
                                        if(maxnum>=0 && maxnum<=100) max=100;
                                        else if(maxnum>100 && maxnum<=150) max=150;
                                        else if (maxnum>150 && maxnum<=200) max=200;
                                        else max=255;
                                        /*]]>*/
                                        chart = new AChart({
                                            id : 'canvas',
                                            theme : Chart.Theme.Smooth1,
                                            width : 360,
                                            height : 450,
                                            plotCfg : {
                                                margin : [20,20,20]

                                            },
                                            title : {
                                                text : name,
                                                'font-size' : '16px'
                                            },
                                            // subTitle : {
                                            //     text : 'Source: WorldClimate.com'
                                            // },
                                            xAxis : {
                                                type : 'circle',
                                                line : null,
                                                ticks : ['HP','ATK','DEF','SPD','SPATK','SPDEF']
                                            },
                                            yAxis : {
                                                title : null,
                                                type : 'radius',
                                                grid : {
                                                    type : 'circle'
                                                },
                                                labels : {
                                                    label : {
                                                        x : -5
                                                    }
                                                },
                                                min : 0,
                                                max : max

                                            },
                                            /*tooltip : {
                                              shared : true //共享栅格
                                            },*/
                                            series: [
                                                {
                                                    name : 'primary state',
                                                    type: 'area',
                                                    data: [hp, atk, def, spd, sp_atk, sp_def]
                                                }
                                            ]
                                        });
                                        chart.render();
                                    }
                                    else{alert("failed");}
                                }
                            });
                        }
                        $(".movedetail").click(function(){
                            $(this).nextAll("div:first").toggle();
                            return false;
                        });
                    </script>
                    <!-- script end -->
                </div>
            </div>
            <div class="Title col-md-12" style="padding-top: 15px;background-color: #ff90c4">
                <h3 style="color:#FFFFFF;text-align: center">Carry-on Items</h3>
            </div>
            <div class="items">
                <div class="row">
                    <c:if test="${itemnumber>0}">
                        <c:forEach items="${items}" var="item">
                            <div class="itemsprite col-md-3 text-center"><p>${item.getName()}</p><img src="${item.getSprite()}" width="80px" length="80px"></div>
                            <div class="cost col-md-2 text-center" style="margin-top: 35px"><p>${item.getCost()}&nbsp;&nbsp;円</p></div>
                            <div class="cost col-md-3 text-center" style="margin-top: 35px"><p>${item.getAttribute()}</p></div>
                            <div class="itementry col-md-4 textcenter" style="margin-top: 35px"><p>${item.getEntry()}</p></div>
                        </c:forEach>
                    </c:if>
                    <c:if test="${itemnumber==0}">
                        <div class="col-md-12 text-center"><h5>N/A</h5></div>
                    </c:if>
                </div>
            </div>
            <div class="Title col-md-12" style="padding-top: 15px;background-color: #80bdff">
                <h3 style="color:#FFFFFF;text-align: center">Type Versus Chart</h3>
            </div>
            <div class="TypeChart">
                <iframe style="margin-left: 0px" src="https://pokemondb.net/type/${pokemon.getType().split("/")[0]}" width="900px" height="480px"></iframe>
            </div>
            <div class="Title col-md-12" style="padding-top: 15px;background-color: #ffff66">
                <h3 style="color:#FFFFFF;text-align: center">Evolution Chain</h3>
            </div>
            <div class="evolutionchain">
                <c:if test="${evomod==2}">
                    <div class="row">
                        <div  style="margin-top: 60px;margin-left: 450px;"><img src="img/animated/${evo1}.gif" width="70px" /></div>
                        <div style="font-size: small">
                            <c:forEach var="i" begin="0" end="5">
                                <c:if test="${!(method1.split(\",\")[i].substring(method1.split(\",\")[i].indexOf(\":\")+1,method1.split(\",\")[i].length()).equals(\"\")||method1.split(\",\")[i].substring(method1.split(\",\")[i].indexOf(\":\")+1,method1.split(\",\")[i].length()).equals(\"null\"))}">
                                    <p>${method1.split(",")[i]}</p>
                                </c:if>
                            </c:forEach>
                            <img src="img/arrow1.png" width="80px" />
                        </div>
                        <div style="margin-top: 60px"><img src="img/animated/${evo2}.gif" width="70px" /></div>
                    </div>
                </c:if>
                <c:if test="${evomod==1}">
                    <div class="row">
                        <div class="col-md-12" style="margin-left: 400px"><img  src="img/animated/${evo1}.gif" width="90px" /></div>
                    </div>
                </c:if>
                <c:if test="${evomod==3}">
                    <div class="row">
                        <div class="col-md-2" style="margin-top: 60px;margin-left:116px;"><img src="img/animated/${evo1}.gif" width="70px" /></div>
                        <div  style="font-size: small">
                            <c:forEach var="i" begin="0" end="5">
                                <c:if test="${!(method1.split(\",\")[i].substring(method1.split(\",\")[i].indexOf(\":\")+1,method1.split(\",\")[i].length()).equals(\"\")||method1.split(\",\")[i].substring(method1.split(\",\")[i].indexOf(\":\")+1,method1.split(\",\")[i].length()).equals(\"null\"))}">
                                    <p>${method1.split(",")[i]}</p>
                                </c:if>
                            </c:forEach>
                            <img src="img/arrow3.png" width="80px" />
                        </div>
                        <div class="col-md-2" style="margin-top: 60px"><img src="img/animated/${evo2}.gif" width="70px" /></div>
                        <div style="font-size: small">
                            <c:forEach var="i" begin="0" end="5">
                                <c:if test="${!(method2.split(\",\")[i].substring(method2.split(\",\")[i].indexOf(\":\")+1,method2.split(\",\")[i].length()).equals(\"\")||method2.split(\",\")[i].substring(method1.split(\",\")[i].indexOf(\":\")+1,method2.split(\",\")[i].length()).equals(\"null\"))}">
                                    <p>${method2.split(",")[i]}</p>
                                </c:if>
                            </c:forEach>
                            <img src="img/arrow3.png" width="80px" />
                        </div>
                        <div class="col-md-2" style="margin-top: 60px"><img src="img/animated/${evo3}.gif" width="70px" /></div>
                    </div>
                </c:if>
            </div>
        </div>
    </div>
</div>
<input type="hidden" id="pokemonid" value="${pokemon.getId()}" />
<input type="hidden" id="pokemonname" value="${pokemon.getName()}" />

</body>
</html>
