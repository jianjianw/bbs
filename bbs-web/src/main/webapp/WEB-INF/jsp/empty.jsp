<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <style type="text/css">
        .content {
            color: #ffffff;
            font-size: 40px;
        }
        .bg {
            background: url('/img/37.jpg');
            height:600px;
            text-align: center;
            line-height: 600px;
        }
        .bg-blur {
            float: left;
            width: 100%;
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            -webkit-filter: blur(15px);
            -moz-filter: blur(15px);
            -o-filter: blur(15px);
            -ms-filter: blur(15px);
            filter: blur(15px);
        }
        .content-front {
            position:absolute;
            left: 10px;
            right: 10px;
            height:600px;
            line-height: 600px;
            text-align: center;
        }

    </style>
</head>
<body>
<div>
    <div class="bg bg-blur"></div>
    <%--<div class="content content-front">我是内容</div>--%>
</div>
</div>
</body>
</html>
