<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="${APP_PATH}/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${APP_PATH}/css/font-awesome.min.css">
    <link rel="stylesheet" href="${APP_PATH}/css/theme.css">
    <style>
        #footer {
            padding: 15px 0;
            background: #fff;
            border-top: 1px solid #ddd;
            text-align: center;
        }
        .center{
            position: absolute;
            left: 15%;
        }
    </style>
</head>
<body>
<div class="navbar-wrapper">
    <%@include file="/WEB-INF/jsp/common/top.jsp"%>
</div>
<div class="container">
    <div class="row clearfix">
        <div class="col-sm-3 col-md-3 column">
            <div class="row">
                <div class="col-md-12">
                    <div class="thumbnail" style="    border-radius: 0px;">
                        <img src="${APP_PATH}/img/services-box1.jpg" class="img-thumbnail" alt="">
                        <div class="caption" style="text-align:center;">
                            <h3>
                                ${loginUser.username}
                            </h3>
                            <span class="label label-danger" style="cursor:pointer;" onclick="window.location.href='accttype.html'">未实名认证</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="list-group">
               <div class="list-group-item" style="cursor:pointer;" onclick="window.location.href='${APP_PATH}/weight/index'">
                   体重变化指标<span class="badge"><i class="glyphicon glyphicon-chevron-right"></i></span>
               </div>
                <div class="list-group-item active ">
                    BMI计算器<span class="badge"><i class="glyphicon glyphicon-chevron-right"></i></span>
                </div>
            </div>
        </div>

        <div class="col-sm-9 col-md-9 column">
            <blockquote style="border-left: 5px solid #f60;color:#f60;padding: 0 0 0 20px;">
                <b>
                    BMI指数计算
                </b>
            </blockquote>
            <div id="main" style="width: 600px;height:400px;">
                <h3 >简称体质指数又称体重，英文为Body Mass Index</h3><br>
                <table border="0" class="table table-striped">
                    <tbody>
                    <tr>
                        <td >身高：<input id = "high" placeholder="cm" class="form-control"></td>
                        <td ></td>
                        <td ></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td width="200px"><input type="button" class="btn btn-lg btn-success btn-block"  id = "convert" value="胖不胖就看这一把了" onclick="convert()" ></td>
                        <td ><input id = "result" class="btn-lg form-control" style="height:46px "></td>
                    </tr>
                    <tr>
                        <td >体重：<input id = "weight" class="form-control" placeholder="kg"></td>
                        <td ></td>
                        <td ></td>
                    </tr>
                    </tbody>
                </table>

                <div class = "center">
                    <table width="400px" height="200px">
                        <thead>
                        <tr>
                            <th>分类</th>
                            <th>BMI 范围</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td bgcolor="#CCCCCC">偏瘦</td>
                            <td bgcolor="#CCCCCC">&lt;= 18.4</td>
                        </tr>
                        <tr>
                            <td bgcolor="#66cc00">正常</td>
                            <td bgcolor="#66cc00">18.5 ~ 23.9</td>
                        </tr>
                        <tr>
                            <td bgcolor="#ffff00">过重</td>
                            <td bgcolor="#ffff00">24.0 ~ 27.9</td>
                        </tr>
                        <tr>
                            <td bgcolor="#ff9900">肥胖</td>
                            <td bgcolor="#ff9900">&gt;= 28.0</td>
                        </tr>
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
</div>
<script src="${APP_PATH}/jquery/jquery-2.1.1.min.js"></script>
<script src="${APP_PATH}/bootstrap/js/bootstrap.min.js"></script>
<script src="${APP_PATH}/script/docs.min.js"></script>
<script src="${APP_PATH}/script/back-to-top.js"></script>
<script src="${APP_PATH}/script/echarts.js"></script>
<script src="${APP_PATH}/layer/layer.js"></script>

<script>
    function convert() {
        // 非空校验
        var high = $("#high").val();

        if ( high == "" ) {
            layer.msg("身高不能为空", {time:2000, icon:5, shift:6}, function(){
            });
            return;
        }
        var weight = $("#weight").val();
        if ( weight == "" ) {
            layer.msg("体重不能为空", {time:2000, icon:5, shift:6}, function(){
            });
            return;
        }

        var result = weight/(high/100*2);
        result = result.toFixed(2);//保留2位小数
        $("#result").val(result);


    }
</script>
</body>
</html>