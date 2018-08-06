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
				<div class="list-group-item active">
					体重变化指标<span class="badge"><i class="glyphicon glyphicon-chevron-right"></i></span>
				</div>
				<div class="list-group-item " style="cursor:pointer;" onclick="window.location.href='${APP_PATH}/weight/add'">
                    BMI计算器<span class="badge"><i class="glyphicon glyphicon-chevron-right"></i></span>
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
                                            输入今日体重
                                        </b>
            </blockquote>
            <div id="main1" style="width: 600px;height:400px;">

                <form class="form-horizontal" role="form" id = "weightForm">
                    <input type="hidden" name="userId" value="${loginUser.userId}">
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">体重</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name = "weight" id="weight"  placeholder="kg">
                        </div>
                    </div>
                    <div class="form-group">
                        <label  class="col-sm-2 control-label">腰围</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name = "waist" id="waist"  placeholder="cm   腰围可以为空">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default" onclick="save()">保存</button>
                        </div>
                    </div>
                </form>


            </div>
           <%-- <blockquote style="border-left: 5px solid #f60;color:#f60;padding: 0 0 0 20px;">
                                        <b>
                                            胸围变化
                                        </b>
               </blockquote>
            <div id="main2" style="width: 600px;height:400px;"></div>--%>
		</div>
	</div>
</div>
        <div class="container" style="margin-top:20px;">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <div id="footer">
                        <div class="footerNav">
                             <a rel="nofollow" href="http://www.saymyname.com">关于我们</a> | <a rel="nofollow" href="http://www.saymyname.com">服务条款</a> | <a rel="nofollow" href="http://www.saymyname.com">免责声明</a> | <a rel="nofollow" href="http://www.saymyname.com">网站地图</a> | <a rel="nofollow" href="http://www.saymyname.com">联系我们</a>
                        </div>
                        <div class="copyRight">
                            www.saymyname.com 版权所有
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
$('#myTab a').click(function (e) {
  e.preventDefault()
  $(this).tab('show')
})
$('#myTab1 a').click(function (e) {
  e.preventDefault()
  $(this).tab('show')
})

var myChart = echarts.init(document.getElementById('main'));
// 指定图表的配置项和数据
option = {
    title: {
        text: '身体七日变化'
    },
    tooltip: {
        trigger: 'axis'
    },
    legend: {
        data:['体重','腰围']
    },
    toolbox: {
        show: false,
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
        data: []
    },
    yAxis: {
        type: 'value',
        axisLabel: {
            formatter: '{value} '
        }
    },
    series: [
        {
            name:'体重',
            type:'line',
            data:[1, 1, 5, 3, 2, 3, 2],
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
            name:'腰围',
            type:'line',
            data:[1, -2, 2, 5, 3, 2, 4],
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
myChart.showLoading();
//发送ajax
$.ajax({
    type : "POST",
    url  : ${APP_PATH}"/date/findDates",
    success : function(result) {
        if (result.success) {
            myChart.hideLoading();
            option.xAxis.data = result.data;
            myChart.setOption(option);
        } else {
            alert("数据加载失败");
        }
    }
});

function save(){
    var weight = $("#weight").val();
    // 表单元素的value取值不会为null, 取值是空字符串
    if ( weight == "" ) {
        alert("体重不能为空");
        return;
    }

    $.ajax({
        type : "POST",
        url  : ${APP_PATH}"/weight/saveOrUpdate",
        data : $("#weightForm").serialize(),
        success : function(result) {
            if (result.success) {
                alert("数据保存成功");
            } else {
                alert("数据保存失败");
            }
        }
    });
}
/*var myChart2 = echarts.init(document.getElementById('main2'));

        // 指定图表的配置项和数据
option2 = {
    title : {
        text: '某站点用户访问来源',
        subtext: '纯属虚构',
        x:'center'
    },
    tooltip : {
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c} ({d}%)"
    },
    legend: {
        orient: 'vertical',
        left: 'left',
        data: ['直接访问','邮件营销','联盟广告','视频广告','搜索引擎']
    },
    series : [
        {
            name: '访问来源',
            type: 'pie',
            radius : '55%',
            center: ['50%', '60%'],
            data:[
                {value:335, name:'直接访问'},
                {value:310, name:'邮件营销'},
                {value:234, name:'联盟广告'},
                {value:135, name:'视频广告'},
                {value:1548, name:'搜索引擎'}
            ],
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }
    ]
};

        // 使用刚指定的配置项和数据显示图表。
        myChart2.setOption(option2);*/
	</script>
  </body>
</html>