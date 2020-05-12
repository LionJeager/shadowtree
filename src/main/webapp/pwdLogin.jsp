<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Shadow Tree-密码登录</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/main.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<embed src="static/lemon.mp3" hidden=true autostart=true loop=true/>
<body>
<div class="mainBody">

    <div class="nav-parent">
        <nav class="navbar navbar-fixed-top" role="navigation">
            <div class="navbar-header">
                <ul class="nav navbar-nav navbar-left" style="margin-left:2%">
                    <li><img id="logo" src="<%=basePath%>static/newTitle.png" alt="ShadowTree Logo Missing"></li>
                </ul>
            </div>
            <div id="cel1"></div>
            <div class="collapse navbar-collapse" style="">
                <ul class="nav navbar-nav navbar-right" style="margin-right:5%;margin-top:1%;">
                    <li><a class="nav-right" href="Index.jsp">主页</a></li>
                    <li><a class="nav-right" href=#">登录</a></li>
                    <li><a class="nav-right" href="Regist.jsp">注册</a></li>
                    <li><a class="nav-right" href="#">账号</a></li>
                </ul>
            </div>
            <div class="top">
            </div>
            <hr style="border:1px dashed #000; height:0">
        </nav>

    </div>

    <div class="topHigh">登录</div>
    <!--<div class="topLow" style="position:absolute;margin-left:70%;margin-top:5%"><img src="../static/people.static"></div>-->
    <div class="mid">
        <form id="form" action="<%=basePath%>User/LoginAction" method="post"
              class="form-horizontal " role="form">

            <div class="form-group">
                <label for="inputPhone" class="col-xs-4 control-label" required="required">注册号码:</label>
                <div class="col-xs-2">
                    <input class="form-control" placeholder="请输入注册手机号码" name="phoneNum" type="text" id="inputPhone"
                           required="required">
                </div>
                <div class="col-xs-2">
                    <div id="phoneMsg" style="line-height:42px;height:42px;color:red;">${sessionScope.message}</div>
                </div>
            </div>
            <div class="form-group">
                <label for="verifyCode" class="col-xs-4 control-label">登录密码:</label>
                <div class="col-xs-2" id="codeArea">
                    <input class="form-control" placeholder="请输入登录密码" name="password" type="password" id="verifyCode"
                    >
                </div>
                <div class="col-xs-2">
                    <input id="login" class="btn btn-info form-control" type="button" value="登录">
                </div>

            </div>
            <div class="form-group">
                <div class="col-xs-4">

                </div>
                <div class="col-xs-2">
                    <a href="Login.jsp" class="Login-href">验证码登录</a>
                </div>
                <div class="col-xs-2">
                    <a href="#" class="Login-href">忘记密码?</a>
                </div>
            </div>
<%--            <div class="form-group">--%>
<%--                <div class="col-xs-4">--%>
<%--                </div>--%>
<%--                <div class="col-xs-2">--%>
<%--                    <ul>--%>
<%--                        <li><img class="login-pic" src="static/weibo.png" alt=""></li>--%>
<%--                        <li><input style="text-align:left;" id="weibo" class="btn btn-link form-control" type="text"--%>
<%--                                   value="微博登录"></li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--                <div class="col-xs-2">--%>
<%--                    <ul>--%>
<%--                        <li><img class="login-pic" src="static/weixin.png" alt=""></li>--%>
<%--                        <li><input style="text-align:left;" id="weixin" class="btn btn-link form-control" type="text"--%>
<%--                                   value="微信登录"></li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--            </div>--%>
            <div class="form-group">
                <div class="col-xs-4">

                </div>
                <div class="col-xs-4">
                    <input type="checkbox" id="proc">我已阅读<a href="#">《用户使用协议》</a>和<a href="#">《用户隐私政策》</a>
                </div>
            </div>
        </form>
    </div>

</div>
<script type="text/javascript" charset="utf-8">

    $('#login').click(function () {
        if (!$('#proc').get(0).checked) {
            alert("请阅读并且勾选我已阅读协议");
        } else {
            $('#form').submit();
        }
    });

    $('#inputPhone').keyup(function () {
        var val = $('#inputPhone').val();
        if (val == "") {
            $('#phoneMsg').html("用户不能为空");

        } else if (val.length != 11) {
            $('#phoneMsg').html("不合法的用户");

        } else if (val.substr(0, 1) != '1') {
            $('#phoneMsg').html("不合法的用户");
        } else {
            $('#phoneMsg').css('color', 'green');
            $('#phoneMsg').html("√");
        }
    });

    $('#register').click(function () {
        $(location).attr('href', 'Regist.jsp')
    });
    $('#codeLogin').click(function () {
        $(location).attr('href', 'Login.jsp')
    });
</script>
</body>
</html>