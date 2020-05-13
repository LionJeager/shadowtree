<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Shadow Tree-首页 </title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=basePath%>static/main.css">
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
                    <li><img id="logo" src="<%=basePath%>static/newTitle.png"></li>
                </ul>
            </div>
            <div id="cel1"></div>
            <div class="collapse navbar-collapse" style="">
                <ul class="nav navbar-nav navbar-right" style="margin-right:5%;margin-top:1%;">
                    <li><a class="nav-right">${sessionScope.userPhone}</a></li>
                    <li ><a class="nav-right">注销</a></li>
                </ul>
            </div>
            <div class="top">
            </div>
            <hr class="hr">
        </nav>
    </div>
    <div style="background: #000000;width: 100%;height: 75%;margin-top:10%;padding-top:3%" >
        <div style="background: #000000;width: 66%;height: 94%;margin-left:18%;">
            <video width="100%" height="100%" controls>
                <source src="<%=basePath%>static/ETL.mp4" type="video/mp4">
                <source src="<%=basePath%>static/movie.ogg" type="video/ogg">
            </video>
        </div>
    </div>
</div>
<script  type="text/javascript" charset="utf-8">

</script>
</body>
</html>