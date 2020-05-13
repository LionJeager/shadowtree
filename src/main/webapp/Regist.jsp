<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Shadow Tree-注册</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/main.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<embed src="static/lemon.mp3" hidden=true autostart=true loop=true />
<body>
<style>

</style>
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
                    <li><a class="nav-right" href="https://www.bilibili.com/">主页</a></li>
                    <li><a class="nav-right" href="#">投稿</a></li>
                    <li><a class="nav-right" href="Login.jsp">登录</a></li>
                    <li><a class="nav-right" href="#">注册</a></li>
                </ul>
            </div>
            <div class="top">
            </div>
            <hr class="hr">
        </nav>

    </div>

    <div class="topHigh">注册</div>
    <!--<div class="topLow" style="position:absolute;margin-left:70%;margin-top:5%"><img src="../static/people.static"></div>-->
    <div class="mid">
        <form id="form" action="Login" method="post" class="form-horizontal " role="form">

            <div class="form-group">
                <label  for="inputPhone" class="col-xs-4 control-label" required="true">手机号码:</label>
                <div class="col-xs-2">
                    <input class="form-control" placeholder="请输入手机号" type="text" id="inputPhone" class="input-value">
                </div>
                <div class="col-xs-2">
                    <div id="phoneMsg" style="line-height:42px;visibility:hidden;height:42px;">aaa</div>
                </div>
            </div>
            <div class="form-group">
                <label for="verifyCode" class="col-xs-4 control-label">验证码:</label>
                <div class="col-xs-2" id="codeArea">
                    <input class="form-control" placeholder="请输入6位短信验证码" type="text" id="verifyCode" class="input-value">
                </div>
                <div class="col-xs-2" >
                    <input id="getCode" class="btn btn-info form-control" type="button" value="获取验证码" >
                </div>

            </div>
            <div class="form-group" >
                <label for="inputPwd" class="col-xs-4 control-label">设置密码:</label>
                <div class="col-xs-2">
                    <span class="block input-icon input-icon-right">
                          <input class="form-control" placeholder="请设置登录密码" type="password" id="inputPwd" class="input-value">
                    </span>

                </div>
                <div class="col-xs-2">
                    <input id="regist" class="btn btn-info form-control" type="button" value="确认" >
                </div>
            </div>
            <div class="form-group" >
                <div class="col-xs-4">

                </div>
                <div class="col-xs-1 pwdStrength" id="low">
                    低
                </div>
                <div class="col-xs-1 pwdStrength" id="medium">
                    中
                </div>
                <div class="col-xs-1 pwdStrength" id="high">
                    高
                </div>
            </div>
            <div class="form-group" >

                <div class="col-xs-4">

                </div>
                <div class="col-xs-4">
                    <input type="checkbox" id="proc">我已阅读<a href="#">《用户使用协议》</a>和<a href="#">《用户隐私政策》</a>
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

        }else if(val.charAt(0)!='1'){
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

    $('#inputPwd').keyup(function(){
        var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
        var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
        if (strongRegex.test($(this).val())) {
            $('#high').css("background-color","lightgreen");
            $('#medium').css("background-color","white");
            $('#low').css("background-color","white");
        } else if (mediumRegex.test($(this).val())) {
            $('#high').css("background-color","white");
            $('#medium').css("background-color","lightblue");
            $('#low').css("background-color","white");
        } else {
            $('#high').css("background-color","white");
            $('#medium').css("background-color","white");
            $('#low').css("background-color","orange");
        }
        return true;
    });

    $('#regist').click(function(){
        let phoneNum=$('#inputPhone').val();
        let password=$('#inputPwd').val();
        let pwdLen=password.length;
        if(pwdLen<6||pwdLen>16){
            alert("密码长度6-16个字符");
        }else if($('#phoneMsg').html()!="√"){
            alert("请检查手机号");
        }else if(!$('#proc').get(0).checked){
            alert("请阅读并且勾选我已阅读协议");
        }else{
            let registInfo={
                "phoneNum" : phoneNum,
                "verifyCode" : $('#verifyCode').val(),
                "password" : password
            }
            $.ajax({
                type: 'POST',
                url : 'http://localhost:8080/shadowtree_war/User/RegistAction',
                contentType: "application/json",
                data: JSON.stringify(registInfo),
                async: false,
                timeout: 10000,
                success: function(data) {
                    alert(data);
                    if(data=="SUCCESS");
                    window.location.href="http://localhost:8080/shadowtree_war/Login.jsp";
                }
            });
        }
    });

</script>
</body>
</html>