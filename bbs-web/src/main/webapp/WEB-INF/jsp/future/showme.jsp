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
	</style>
      <title>永远年轻，永远热泪盈眶</title>
  </head>
  <body>
 <%--<div class="navbar-wrapper">
      <div class="container">
			<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			  <div class="container">
				<div class="navbar-header">
                    <marquee dircation="left" loop="-1" bgcolor="black" height="35%" width="100%" onMouseOver="this.stop()" onMouseOut="this.start()" vspace="5"><font face="楷体" size="6"><a href="advise.html" target="right">老天既然给了我才华，为什么还要给我颜值？你不得不承认这世界是很不公平的，但是你除了接受还能怎么办？</a></font></marquee>

                </div>
              </div>
			</nav>
      </div>
 </div>--%>

    <div class="container theme-showcase" role="main">

      <div class="page-header">
           <h2>老天既然给了我才华，为什么还要给我颜值？你不得不承认这世界是很不公平的。。。</h2>
      </div>
	  <div style="padding-top:10px;">
		<div class="row">
      <div class="col-xs-6 col-md-3">


        <a href="#" class="thumbnail">

          <img alt="100%x180" src="${pageContext.request.contextPath}/img/103.jpg" data-holder-rendered="true" style="height: 280px; width: 100%; display: block;">
        </a>

      </div>
      <div class="col-xs-6 col-md-3">

        <a href="#" class="thumbnail">
          <img alt="100%x180" src="${pageContext.request.contextPath}/img/106.jpg" data-holder-rendered="true" style="height: 280px; width: 100%; display: block;">
        </a>
      </div>
      <div class="col-xs-6 col-md-3">

        <a href="#" class="thumbnail">
          <img alt="100%x180" src="${pageContext.request.contextPath}/img/100.jpg" data-holder-rendered="true" style="height: 280px; width: 100%; display: block;">
        </a>
      </div>
      <div class="col-xs-6 col-md-3">

        <a href="#" class="thumbnail">
          <img alt="100%x180" src="${pageContext.request.contextPath}/img/105.jpg" data-holder-rendered="true" style="height: 280px; width: 100%; display: block;">
        </a>
      </div>
    </div>
	<button type="button" class="btn btn-danger btn-lg btn-block" onclick="window.location.href='${pageContext.request.contextPath}/main'">是的，我愿意承认上面的小伙子很帅。。</button>
    </div>
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