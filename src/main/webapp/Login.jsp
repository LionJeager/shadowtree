<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Shadow Tree-验证码登录</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/main.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<embed src="static/lemon.mp3" hidden=true autostart=true loop=true />
<body>
<div class="mainBody">

    <div class="nav-parent">
        <nav class="navbar navbar-fixed-top" role="navigation">
            <div class="navbar-header">
                <ul class="nav navbar-nav navbar-left" style="margin-left:2%">
                    <li><img id="logo" src="static/newTitle.png"></li>
                </ul>
            </div>
            <div id="cel1"></div>
            <div class="collapse navbar-collapse" style="">
                <ul class="nav navbar-nav navbar-right" style="margin-right:5%;margin-top:1%;">
                    <li><a class="nav-right" href="Index.jsp">主页</a></li>
                    <li><a class="nav-right" href="#">投稿</a></li>
                    <li><a class="nav-right" href=#">登录</a></li>
                    <li><a class="nav-right" href="Regist.jsp">注册</a></li>
                </ul>
            </div>
            <div class="top">
            </div>
            <hr class="hr">
        </nav>

    </div>

    <div class="topHigh">登录</div>
    <!--<div class="topLow" style="position:absolute;margin-left:70%;margin-top:5%"><img src="../static/people.static"></div>-->
    <div class="mid">
        <form id="form" action="LoginAction" method="post" class="form-horizontal " role="form">

            <div class="form-group">
                <label  for="inputPhone" class="col-xs-4 control-label" required="true">手机号码:</label>
                <div class="col-xs-2">
                    <input class="form-control" placeholder="请输入手机号" name="phoneNum" type="text" id="inputPhone" class="input-value">
                </div>
                <div class="col-xs-2">
                    <div id="phoneMsg" style="line-height:42px;visibility:hidden;height:42px;">aaa</div>
                </div>
            </div>
            <div class="form-group">
                <label for="verifyCode" class="col-xs-4 control-label">验证码:</label>
                <div class="col-xs-2" id="codeArea">
                    <input class="form-control" placeholder="请输入6位短信验证码" name="verifyCode" type="text" id="verifyCode" class="input-value">
                </div>
                <div class="col-xs-2" >
                    <input id="getCode" class="btn btn-info form-control" type="button" value="获取验证码" >
                </div>

            </div>
            <div class="form-group" >
                <div class="col-xs-4">

                </div>
                <div class="col-xs-2">
                    <input id="pwdLogin" class="btn btn-info form-control" type="button" value="切换为密码登录">
                </div>
                <div class="col-xs-2">
                    <input id="login" class="btn btn-info form-control" type="button" value="登录">
                </div>
            </div>
<%--            <div class="form-group" >--%>
<%--                <div class="col-xs-4">--%>
<%--                </div>--%>
<%--                <div class="col-xs-2">--%>
<%--                    <ul>--%>
<%--                        <li><img class="login-pic" src="static/weibo.png"></li>--%>
<%--                        <li ><input style="text-align:left;" id="weibo" class="btn btn-link form-control" type="text" value="微博登录"></li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--                <div class="col-xs-2">--%>
<%--                    <ul>--%>
<%--                        <li><img class="login-pic" src="static/weixin.png"></li>--%>
<%--                        <li><input style="text-align:left;" id="weixin" class="btn btn-link form-control" type="text" value="微信登录"></li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--            </div>--%>
            <div class="form-group" >
                <div class="col-xs-4">

                </div>
                <div class="col-xs-4">
                    <input type="checkbox">我已阅读<a href="#">《用户使用协议》</a>和<a href="#">《用户隐私政策》</a>
                </div>
            </div>
        </form>
    </div>
<%--    <div class="bottom">
        <div>
            <div>

            </div>
            <div style="display:none;">
                <audio controls="controls" autoplay="autoplay">
                    <source src="lemon.ogg" type="audio/ogg" />
                    <source id="lemon" src="static/lemon.mp3" type="audio/mpeg" />
                </audio>

            </div>
        </div>

    </div>--%>
</div>
<script  type="text/javascript" charset="utf-8">

    $('#login').click(function(){
        let loginUser=$('#inputPhone').val();
        let password=$('#verifyCode').val();
        let userDetail = {
            "loginUser" : loginUser,
            "password" : password
        }
        $(this).attr("class","btn btn-info btn-active form-control");
        $.ajax({
            type: 'POST',
            url : 'http://localhost:8080/shadowtree_war/User/LoginAction',
            contentType: "application/json",
            data: JSON.stringify(userDetail),
            async: false,
            timeout: 10000,
            success: function(data) {
                if("SUCCESS"==data);
                window.location.href="http://localhost:8080/shadowtree_war/Index.jsp";
            }
        });
    });

    $('#inputPhone').keyup(function(){
        var val=$('#inputPhone').val();
        if(val==""){
            $('#phoneMsg').css('visibility','visible');
            $('#phoneMsg').css('color','red');
            $('#phoneMsg').html("手机号不能为空");

        }else if(val.length!=11){
            $('#phoneMsg').css('visibility','visible');
            $('#phoneMsg').css('color','red');
            $('#phoneMsg').html("手机号不合法");

        }else if(val.substr(0,1)!='1'){
            $('#phoneMsg').css('visibility','visible');
            $('#phoneMsg').css('color','red');
            $('#phoneMsg').html("手机号不合法");
        }else{
            $('#phoneMsg').css('visibility','visible');
            $('#phoneMsg').css('color','green');
            $('#phoneMsg').html("√");
        }
    });

    $('#getCode').click(function(){
        if($('#phoneMsg').html()=="√"){
            var seconds=60;
            var codeSend=true;
            if(codeSend){
                var	audio = $('audio')[0];
                audio.play();
                codeSend=false;
                var timer=setInterval(function(){
                    seconds--;
                    $('#getCode').val("验证码发送成功("+seconds+"s)");
                    $('#getCode').attr("class","btn btn-warning btn-active form-control");
                    $('#getCode').prop("disabled",true);
                    if(seconds==0){
                        audio.pause();
                        clearInterval(timer);
                        codeSend=true;
                        $('#getCode').val("重新发送");
                        $('#getCode').prop("disabled",false);
                        $('#getCode').attr("class","btn btn-danger form-control");
                    }
                },1000);

            }
        }
    });

    $('#register').click(function(){
        $(location).attr('href', 'Regist.jsp')
    });


    $('#pwdLogin').click(function(){
        $(location).attr('href', 'pwdLogin.jsp')
    });

</script>
</body>
</html>