<%--
  Created by IntelliJ IDEA.
  User: yaojiawei
  Date: 2018/3/31
  Time: 下午8:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Stats</title>
    <link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        .demo{padding: 2em 0;background: #fff;}
        .progress-title{
            font-size: 18px;
            font-weight: 700;
            font-style: italic;
            color: #455493;
            margin: 0 0 20px;
        }
        .progress{
            height: 7px;
            background: #f8f8f8;
            border-radius: 0;
            box-shadow: none;
            margin-bottom: 30px;
            overflow: visible;
        }
        .progress .progress-bar{
            box-shadow: none;
            border-radius: 0;
            position: relative;
            -webkit-animation: animate-positive 2s;
            animation: animate-positive 2s;
        }
        .progress .progress-bar:before,
        .progress .progress-bar:after{
            content: "";
            width: 20px;
            height: 20px;
            background: #fff;
            position: absolute;
            top: -6px;
            right: 16px;
            transform: rotate(45deg);
        }
        .progress .progress-bar:after{
            border: 2px solid #fff;
            position: absolute;
            right: 2px;
        }
        .progress.red .progress-bar:before,
        .progress.red .progress-bar:after{
            outline: 2px solid #ef5b5b;
        }
        .progress.red .progress-bar:after{
            background: #ef5b5b;
        }
        .progress.yellow .progress-bar:before,
        .progress.yellow .progress-bar:after{
            outline: 2px solid #ffc116;
        }
        .progress.yellow .progress-bar:after{
            background: #ffc116;
        }
        .progress.blue .progress-bar:before,
        .progress.blue .progress-bar:after{
            outline: 2px solid #20a39e;
        }
        .progress.blue .progress-bar:after{
            background: #20a39e;
        }
        .progress.green .progress-bar:before,
          .progress.green .progress-bar:after{
            outline: 2px solid #7cb518;
          }
        .progress.green .progress-bar:after{
            background: #7cb518;
        }
        .progress.black .progress-bar:before,
        .progress.black .progress-bar:after{
            outline: 2px solid #000000;
        }
        .progress.black .progress-bar:after{
            background: #000000;
        }
        .progress.purple .progress-bar:before,
        .progress.purple .progress-bar:after{
            outline: 2px solid #9370db;
        }
        .progress.purple.progress-bar:after{
            background: #9370db;
        }
        @-webkit-keyframes animate-positive{
            0%{ width: 0; }
        }
        @keyframes animate-positive{
            0%{ width: 0; }
        }
    </style>
</head>
<body>

<div class="demo">
    <div class="container">
        <div class="row">
            <div class="col-md-3">

                <h5 class="progress-title">Hp-${pokemon.getHp()}</h5>
                <div class="progress blue">
                    <div class="progress-bar" style="width:${Math.round(Double.parseDouble(pokemon.getHp()/3*2)*100)/100}%; background:#20a39e;"></div>
                </div>
                <h5 class="progress-title">Atk-${pokemon.getAttack()}</h5>
                <div class="progress red">
                    <div class="progress-bar" style="width: ${Math.round(Double.parseDouble(pokemon.getAttack()/3*2)*100)/100}%; background:#ef5b5b;"></div>
                </div>

                <h5 class="progress-title">Def-${pokemon.getDefense()}</h5>
                <div class="progress yellow">
                    <div class="progress-bar" style="width:${Math.round(Double.parseDouble(pokemon.getDefense()/3*2)*100)/100}%; background:#ffc116;"></div>
                </div>
            </div>

            <div class="col-md-3">
                <h5 class="progress-title">Sp Atk-${pokemon.getSp_attack()}</h5>
                <div class="progress green">
                    <div class="progress-bar" style="width:${Math.round(Double.parseDouble(pokemon.getSp_attack()/3*2)*100)/100}%; background:#7cb518;"></div>
                </div>
                <h5 class="progress-title">Sp Def-${pokemon.getSp_defense()}</h5>
                <div class="progress black">
                    <div class="progress-bar" style="width:${Math.round(Double.parseDouble(pokemon.getSp_defense()/3*2)*100)/100}%; background:#000000;"></div>
                </div>
                <h5 class="progress-title">Speed-${pokemon.getSpeed()}</h5>
                <div class="progress purple">
                    <div class="progress-bar" style="width:${Math.round(Double.parseDouble(pokemon.getSpeed()/3*2)*100)/100}%; background:#9370db;"></div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
