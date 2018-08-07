<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/theme.css">
	<style>
#footer {
    padding: 15px 0;
    background: #fff;
    border-top: 1px solid #ddd;
    text-align: center;
}
.seltype {
    position: absolute;
    margin-top: 70px;
    margin-left: 10px;
    color: red;
}
.center{
    position: fixed;
    left: 50%;
}
	</style>
      <title>永远年轻，永远热泪盈眶</title>
  </head>
  <body>

  <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container-fluid">
          <div class="navbar-header">
              <div><a class="navbar-brand" style="font-size:32px;" href="#">saymyname</a></div>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav navbar-right">
                  <li style="padding-top:8px;">
                      <div class="btn-group">
                          <ul class="dropdown-menu" role="menu">
                              <li><a href="#"><i class="glyphicon glyphicon-cog"></i> 个人设置</a></li>
                              <li><a href="#"><i class="glyphicon glyphicon-comment"></i> 消息</a></li>
                              <li class="divider"></li>
                              <li><a href="${APP_PATH}/logout"><i class="glyphicon glyphicon-off"></i> 退出系统</a></li>
                          </ul>
                      </div>
                  </li>
                  <li style="margin-left:10px;padding-top:8px;">
                      <button type="button" class="btn btn-default btn-danger">
                          <span class="glyphicon glyphicon-question-sign"></span> 帮助
                      </button>
                  </li>
              </ul>
          </div>
      </div>
  </nav>

  <div class="container theme-showcase" role="main">

      <div class="page-header">
           <h2>老天既然给了我才华，为什么还要给我颜值？你不得不承认这世界是很不公平的。。。</h2>
      </div>
    <div class="col-xs-6 col-md-3">
    </div>
      <div class="col-xs-6 col-md-3">
          <img style="width: 400px;height: 300px;" data-holder-rendered="true" src="${pageContext.request.contextPath}/img/100.jpg">
      </div>
        <button type="button" class="btn btn-danger btn-lg btn-block" onclick="window.location.href='${pageContext.request.contextPath}/main'">是的，我愿意承认上面的小伙子很帅。。</button>

  </div>

  <%--<div class="col-xs-6 col-md-3">
      <h2>个体工商户</h2>
      <a href="#" class="thumbnail">
          <img alt="100%x180" src="img/services-box2.jpg" data-holder-rendered="true" style="height: 180px; width: 100%; display: block;">
      </a>
  </div>
  <div class="col-xs-6 col-md-3">
      <h2>个人经营</h2>
      <a href="#" class="thumbnail">
          <img alt="100%x180" src="img/services-box3.jpg" data-holder-rendered="true" style="height: 180px; width: 100%; display: block;">
      </a>
  </div>--%>


    <div class="container" style="margin-top:20px;">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div id="footer">
                    <div class="footerNav">
                         <a rel="nofollow" href="http://www.saymyname.cn">关于我们</a> | <a rel="nofollow" href="http://www.saymyname.cn">服务条款</a> | <a rel="nofollow" href="http://www.saymyname.cn">免责声明</a> | <a rel="nofollow" href="http://www.saymyname.cn">网站地图</a> | <a rel="nofollow" href="http://www.saymyname.cn">联系我们</a>
                    </div>
                    <div class="copyRight">
                        www.saymyname.cn 版权所有
                    </div>
                </div>

            </div>
        </div>
    </div>
    <script src="${pageContext.request.contextPath}/jquery/jquery-2.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/script/docs.min.js"></script>
	<script>
    $(".thumbnail").click(function(){
        $('.seltype').remove();
        $(this).prepend('<div class="glyphicon glyphicon-ok seltype"></div>');
    });
	</script>
  </body>
</html>