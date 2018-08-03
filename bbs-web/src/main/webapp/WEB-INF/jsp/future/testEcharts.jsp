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

</head>
<body>

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
                <div class="list-group-item active">
                    体重变化指标<span class="badge"><i class="glyphicon glyphicon-chevron-right"></i></span>
                </div>
                <div class="list-group-item " style="cursor:pointer;" onclick="window.location.href='${APP_PATH}/future/member02'">
                    今日体重记录<span class="badge"><i class="glyphicon glyphicon-chevron-right"></i></span>
                </div>
            </div>
        </div>
        <div class="col-sm-9 col-md-9 column">
            <blockquote style="border-left: 5px solid #f60;color:#f60;padding: 0 0 0 20px;">
                <b>
                    体重变化
                </b>
            </blockquote>
            <div id="main" style="width: 600px;height:400px;"></div>
            <blockquote style="border-left: 5px solid #f60;color:#f60;padding: 0 0 0 20px;">
                <b>
                    腰围变化
                </b>
            </blockquote>
            <div id="main1" style="width: 600px;height:400px;"></div>
            <blockquote style="border-left: 5px solid #f60;color:#f60;padding: 0 0 0 20px;">
                <b>
                    胸围变化
                </b>
            </blockquote>
            <div id="main2" style="width: 600px;height:400px;"></div>
        </div>
    </div>
</div>

<script src="${APP_PATH}/jquery/jquery-2.1.1.min.js"></script>
<script src="${APP_PATH}/bootstrap/js/bootstrap.min.js"></script>
<script src="${APP_PATH}/script/docs.min.js"></script>
<script src="${APP_PATH}/script/back-to-top.js"></script>
<script src="${APP_PATH}/script/echarts.js"></script>
<script>
var myChart = echarts.init(document.getElementById('main'));
option = {
    title: {
        text: '最近一月体重变化',
        subtext: '实时数据'
    },
    tooltip: {
        trigger: 'axis'
    },
    legend: {
        data:['最高体重','最低体重']
    },
    toolbox: {
        show: true,
        feature: {
            dataZoom: {
                yAxisIndex: 'none'
            },
            dataView: {readOnly: false},
            magicType: {type: ['line', 'bar']},
            restore: {},
            saveAsImage: {}
        }
    },
    xAxis:  {
        type: 'category',
        boundaryGap: false,
        data: ['周一','周二','周三','周四','周五','周六','周日']
    },
    yAxis: {
        type: 'value',
        axisLabel: {
            formatter: '{value} °C'
        }
    },
    series: [
        {
            name:'最高体重',
            type:'line',
            data:[11, 11, 15, 13, 12, 13, 10],
            markPoint: {
                data: [
                    {type: 'max', name: '最大值'},
                    {type: 'min', name: '最小值'}
                ]
            },
            markLine: {
                data: [
                    {type: 'average', name: '平均值'}
                ]
            }
        },
        {
            name:'最低体重',
            type:'line',
            data:[1, -2, 2, 5, 3, 2, 0],
            markPoint: {
                data: [
                    {name: '周最低', value: -2, xAxis: 1, yAxis: -1.5}
                ]
            },
            markLine: {
                data: [
                    {type: 'average', name: '平均值'},
                    [{
                        symbol: 'none',
                        x: '90%',
                        yAxis: 'max'
                    }, {
                        symbol: 'circle',
                        label: {
                            normal: {
                                position: 'start',
                                formatter: '最大值'
                            }
                        },
                        type: 'max',
                        name: '最高点'
                    }]
                ]
            }
        }
    ]
};



myChart.setOption(option);
</script>
</body>
</html>