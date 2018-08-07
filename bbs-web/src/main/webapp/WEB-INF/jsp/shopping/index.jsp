﻿<%@page pageEncoding="UTF-8"%>
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
	<link rel="stylesheet" href="${APP_PATH}/css/carousel.css">
      <style>
          h3 {
              font-weight:bold;
          }
          #footer {
              padding: 15px 0;
              background: #fff;
              border-top: 1px solid #ddd;
              text-align: center;
          }
          #topcontrol {
              color: #fff;
              z-index: 99;
              width: 30px;
              height: 30px;
              font-size: 20px;
              background: #222;
              position: relative;
              right: 14px !important;
              bottom: 11px !important;
              border-radius: 3px !important;
          }

          #topcontrol:after {
              /*top: -2px;*/
              left: 8.5px;
              content: "\f106";
              position: absolute;
              text-align: center;
              font-family: FontAwesome;
          }

          #topcontrol:hover {
              color: #fff;
              background: #18ba9b;
              -webkit-transition: all 0.3s ease-in-out;
              -moz-transition: all 0.3s ease-in-out;
              -o-transition: all 0.3s ease-in-out;
              transition: all 0.3s ease-in-out;
          }
          /* 侧栏导航 */
          .sideBox{padding:10px;height:220px;background:#fff;margin-bottom:10px;overflow:hidden;}
          .sideBox .hd{height:30px; line-height:30px; background:#f60; padding:0 10px;text-align:center;overflow:hidden;}
          .sideBox .hd .more{color:#fff;}
          .sideBox .hd h3 span{font-weight:bold; font-size:14px;color:#fff;}
          .sideBox .bd{padding:5px 0 0;}

          #sideMenu .bd li{margin-bottom:2px; height:30px; line-height:30px;text-align:center; overflow:hidden;}
          #sideMenu .bd li a{display:block;background:#EAE6DD;}
          #sideMenu .bd li a:hover{background:#D5CFBF;}

          /* 列表页 */
          #mainBox{margin-bottom:10px;padding:10px;background:#fff;overflow:hidden;}
          #mainBox .mHd{border-bottom:2px solid #09c;height:30px;line-height:30px;}
          #mainBox .mHd h3{display:initial;*display:inline;zoom:1;padding:0 15px;background:#09c;color:#fff;}
          #mainBox .mHd h3 span{color:#fff;font-size:14px;font-weight:bold;}
          #mainBox .path{float:right;}

          /* 位置导航 */
          .path{ height:30px; line-height:30px; padding-left:10px;}
          .path a,.path span{ margin:0 5px;}

          /* 文章列表 */
          .newsList{padding:10px;text-align:left;}
          .newsList li{background:url("../images/share/point.png") no-repeat 2px 14px; padding-left:10px;height:30px; line-height:30px;}
          .newsList li a{display:inline-block;*display:inline;zoom:1;font-size:14px;}
          .newsList li .date{float:right; color:#999;}
          .newsList li.split{margin-bottom:10px;padding-bottom:10px;border-bottom:1px dotted #ddd;height:0px;line-height:0px;overflow:hidden;}

          /* 通用带图片的信息列表_普通式 */
          .picList{padding:10px;text-align:left;}
          .picList li{margin:0 5px;height:190px;}

          h3.break {
              font-size:16px;
              display: block;
              white-space: nowrap;
              word-wrap: normal;
              overflow: hidden;
              text-overflow: ellipsis;
          }
          h3.break>a {
              text-decoration:none;
          }

      </style>
  </head>
  <body>

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active" onclick="window.location.href='${APP_PATH}/shopping/project01'" style="cursor:pointer;">
          <img src="${APP_PATH}/img/205.jpg" alt="First slide">
        </div>
        <div class="item" onclick="window.location.href='${APP_PATH}/shopping/project01'" style="cursor:pointer;">
          <img src="${APP_PATH}/img/204.jpg" alt="Second slide">
        </div>
        <div class="item" onclick="window.location.href='${APP_PATH}/shopping/project01'" style="cursor:pointer;">
          <img src="${APP_PATH}/img/202.jpg" alt="Third slide">
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>


    <div class="container marketing">
      <div class="row">
        <div class="col-lg-4">
          <img class="img-circle" src="${APP_PATH}/img/p1.jpg" alt="Generic placeholder image" style="width: 140px; height: 140px;">
          <h2>索尼（SONY）电子纸 DPT-RP1</h2>
          <p>文件再多也不过360克！</p>
          <p><a class="btn btn-default" href="${APP_PATH}/shopping/project01" role="button">项目详情 &raquo;</a></p>
        </div>
        <div class="col-lg-4">
          <img class="img-circle" src="${APP_PATH}/img/p2.jpg" alt="Generic placeholder image" style="width: 140px; height: 140px;">
          <h2>索尼（SONY）电子纸 DPT-CP1</h2>
          <p>下一代书写工具</p>
          <p><a class="btn btn-default" href="${APP_PATH}/shopping/project01" role="button">项目详情 &raquo;</a></p>
        </div>
        <div class="col-lg-4">
          <img class="img-circle" src="${APP_PATH}/img/product-9.jpg" alt="Generic placeholder image" style="width: 140px; height: 140px;">
          <h2>火狐</h2>
          <p>火狐好像是比google快</p>
          <p><a class="btn btn-default" href="${APP_PATH}/shopping/project01" role="button">项目详情 &raquo;</a></p>
        </div>
      </div>
      
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="box ui-draggable" id="mainBox">
				<div class="mHd" style="">
					<div class="path">
						<a href="projects.html">更多...</a>
					</div>
					<h3>
						科技 <small style="color:#FFF;">开启智慧未来</small>
					</h3>
				</div>
				<div class="mBd" style="padding-top:10px;">
			<div class="row">
				<div class="col-md-3">
					<div class="thumbnail">
						<img style="width: 300px;height:200px;" src="${APP_PATH}/img/product-1.jpg" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">google</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> ￥20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2020-20-20 </div>
                            </p>
                            <br>
								<div class="progress" style="margin-bottom: 4px;">
                                  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                    <span >40% </span>
                                  </div>
                                </div>
                                <div><span style="float:right;"><i class="glyphicon glyphicon-star-empty" ></i></span>  <span ><i class="glyphicon glyphicon-user" title="支持人数"></i> 12345</span> </div>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="thumbnail">
                        <%--<div style="width:200px;height:200px;background-color:Black;">
                        </div>--%>
                        <img style="width: 300px;height:200px;"  src="${APP_PATH}/img/product-2.jpg" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">要什么自行车</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2020-20-20 </div>
                            </p>
                            <br>
								<div class="progress" style="margin-bottom: 4px;">
                                  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                    <span >40% </span>
                                  </div>
                                </div>
                                <div><span style="float:right;"><i class="glyphicon glyphicon-star-empty" ></i></span>  <span ><i class="glyphicon glyphicon-user" title="支持人数"></i> 12345</span> </div>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="thumbnail">
						<img style="width: 300px;height:200px;" src="${APP_PATH}/img/product-3.jpg" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">要什么键盘</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2020-20-20 </div>
                            </p>
                            <br>
								<div class="progress" style="margin-bottom: 4px;">
                                  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                    <span >40% </span>
                                  </div>
                                </div>
                                <div><span style="float:right;"><i class="glyphicon glyphicon-star-empty" ></i></span>  <span ><i class="glyphicon glyphicon-user" title="支持人数"></i> 12345</span> </div>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="thumbnail">
						<img style="width: 300px;height:200px;" src="${APP_PATH}/img/product-4.jpg" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">要什么mac</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2020-20-20 </div>
                            </p>
                            <br>
								<div class="progress" style="margin-bottom: 4px;">
                                  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                    <span >40% </span>
                                  </div>
                                </div>
                                <div><span style="float:right;"><i class="glyphicon glyphicon-star-empty" ></i></span>  <span ><i class="glyphicon glyphicon-user" title="支持人数"></i> 12345</span> </div>
						</div>
					</div>
				</div>
			</div>
				</div>
			</div>
			
		</div>
	</div>
</div>
      
 <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="box ui-draggable" id="mainBox">
				<div class="mHd" style="">
					<div class="path">
						<a href="projects.html">更多...</a>
					</div>
					<h3>
						设计 <small style="color:#FFF;">创意改变生活</small>
					</h3>
				</div>
				<div class="mBd" style="padding-top:10px;">
			<div class="row">
				<div class="col-md-3">
					<div class="thumbnail">
						<img style="width: 300px;height:200px;" src="${APP_PATH}/img/product-5.jpg" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">。。。</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2020-20-20 </div>
                            </p>
                            <br>
								<div class="progress" style="margin-bottom: 4px;">
                                  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                    <span >40% </span>
                                  </div>
                                </div>
                                <div><span style="float:right;"><i class="glyphicon glyphicon-star-empty" ></i></span>  <span ><i class="glyphicon glyphicon-user" title="支持人数"></i> 12345</span> </div>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="thumbnail">
						<img style="width: 300px;height:200px;" src="${APP_PATH}/img/product-6.jpg" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">。。。</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2020-20-20 </div>
                            </p>
                            <br>
								<div class="progress" style="margin-bottom: 4px;">
                                  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                    <span >40% </span>
                                  </div>
                                </div>
                                <div><span style="float:right;"><i class="glyphicon glyphicon-star-empty" ></i></span>  <span ><i class="glyphicon glyphicon-user" title="支持人数"></i> 12345</span> </div>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="thumbnail">
						<img style="width: 300px;height:200px;" src="${APP_PATH}/img/product-7.jpg" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">。。。</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2020-20-20 </div>
                            </p>
                            <br>
								<div class="progress" style="margin-bottom: 4px;">
                                  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                    <span >40% </span>
                                  </div>
                                </div>
                                <div><span style="float:right;"><i class="glyphicon glyphicon-star-empty" ></i></span>  <span ><i class="glyphicon glyphicon-user" title="支持人数"></i> 12345</span> </div>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="thumbnail">
						<img style="width: 300px;height:200px;" src="${APP_PATH}/img/product-8.jpg" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">。。。</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2020-20-20 </div>
                            </p>
                            <br>
								<div class="progress" style="margin-bottom: 4px;">
                                  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                    <span >40% </span>
                                  </div>
                                </div>
                                <div><span style="float:right;"><i class="glyphicon glyphicon-star-empty" ></i></span>  <span ><i class="glyphicon glyphicon-user" title="支持人数"></i> 12345</span> </div>
						</div>
					</div>
				</div>
			</div>
				</div>
			</div>
			
		</div>
	</div>
</div>

<%-- <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="box ui-draggable" id="mainBox">
				<div class="mHd" style="">
					<div class="path">
						<a href="projects.html">更多...</a>
					</div>
					<h3>
						书籍 <small style="color:#FFF;">网络天下肥美</small>
					</h3>
				</div>
				<div class="mBd" style="padding-top:10px;">
			<div class="row">
				<div class="col-md-3">
					<div class="thumbnail">
						<img style="width: 300px;height:200px;" src="${APP_PATH}/img/product-8.jpg" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">活性富氢净水直饮机</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2020-20-20 </div>
                            </p>
                            <br>
								<div class="progress" style="margin-bottom: 4px;">
                                  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                    <span >40% </span>
                                  </div>
                                </div>
                                <div><span style="float:right;"><i class="glyphicon glyphicon-star-empty" ></i></span>  <span ><i class="glyphicon glyphicon-user" title="支持人数"></i> 12345</span> </div>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="thumbnail">
						<img style="width: 300px;height:200px;" src="${APP_PATH}/img/product-2.jpg" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">酷驰触控龙头，智享厨房黑科技</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2020-20-20 </div>
                            </p>
                            <br>
								<div class="progress" style="margin-bottom: 4px;">
                                  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                    <span >40% </span>
                                  </div>
                                </div>
                                <div><span style="float:right;"><i class="glyphicon glyphicon-star-empty" ></i></span>  <span ><i class="glyphicon glyphicon-user" title="支持人数"></i> 12345</span> </div>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="thumbnail">
						<img style="width: 300px;height:200px;" src="${APP_PATH}/img/product-3.jpg" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">小熊猫鱼眼全景安防摄像机</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2020-20-20 </div>
                            </p>
                            <br>
								<div class="progress" style="margin-bottom: 4px;">
                                  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                    <span >40% </span>
                                  </div>
                                </div>
                                <div><span style="float:right;"><i class="glyphicon glyphicon-star-empty" ></i></span>  <span ><i class="glyphicon glyphicon-user" title="支持人数"></i> 12345</span> </div>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="thumbnail">
						<img style="width: 300px;height:200px;" src="${APP_PATH}/img/product-4.jpg" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">一款精致的机械表</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2020-20-20 </div>
                            </p>
                            <br>
								<div class="progress" style="margin-bottom: 4px;">
                                  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                    <span >40% </span>
                                  </div>
                                </div>
                                <div><span style="float:right;"><i class="glyphicon glyphicon-star-empty" ></i></span>  <span ><i class="glyphicon glyphicon-user" title="支持人数"></i> 12345</span> </div>
						</div>
					</div>
				</div>
			</div>
				</div>
			</div>
			
		</div>
	</div>
</div> --%>

 <%--<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="box ui-draggable" id="mainBox">
				<div class="mHd" style="">
					<div class="path">
						<a href="projects.html">更多...</a>
					</div>
					<h3>
						其他 <small style="color:#FFF;">发现更多惊喜</small>
					</h3>
				</div>
				<div class="mBd" style="padding-top:10px;">
			<div class="row">
				<div class="col-md-3">
					<div class="thumbnail">
						<img style="width: 300px;height:200px;" src="${APP_PATH}/img/product-1.jpg" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">活性富氢净水直饮机</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2020-20-20 </div>
                            </p>
                            <br>
								<div class="progress" style="margin-bottom: 4px;">
                                  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                    <span >40% </span>
                                  </div>
                                </div>
                                <div><span style="float:right;"><i class="glyphicon glyphicon-star-empty" ></i></span>  <span ><i class="glyphicon glyphicon-user" title="支持人数"></i> 12345</span> </div>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="thumbnail">
						<img style="width: 300px;height:200px;" src="${APP_PATH}/img/product-2.jpg" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">酷驰触控龙头，智享厨房黑科技</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2020-20-20 </div>
                            </p>
                            <br>
								<div class="progress" style="margin-bottom: 4px;">
                                  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                    <span >40% </span>
                                  </div>
                                </div>
                                <div><span style="float:right;"><i class="glyphicon glyphicon-star-empty" ></i></span>  <span ><i class="glyphicon glyphicon-user" title="支持人数"></i> 12345</span> </div>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="thumbnail">
						<img style="width: 300px;height:200px;" src="${APP_PATH}/img/product-3.jpg" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">小熊猫鱼眼全景安防摄像机</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2020-20-20 </div>
                            </p>
                            <br>
								<div class="progress" style="margin-bottom: 4px;">
                                  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                    <span >40% </span>
                                  </div>
                                </div>
                                <div><span style="float:right;"><i class="glyphicon glyphicon-star-empty" ></i></span>  <span ><i class="glyphicon glyphicon-user" title="支持人数"></i> 12345</span> </div>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="thumbnail">
						<img style="width: 300px;height:200px;" src="${APP_PATH}/img/product-4.jpg" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">一款精致的机械表</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2020-20-20 </div>
                            </p>
                            <br>
								<div class="progress" style="margin-bottom: 4px;">
                                  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                    <span >40% </span>
                                  </div>
                                </div>
                                <div><span style="float:right;"><i class="glyphicon glyphicon-star-empty" ></i></span>  <span ><i class="glyphicon glyphicon-user" title="支持人数"></i> 12345</span> </div>
						</div>
					</div>
				</div>
			</div>
				</div>
			</div>
			
		</div>
	</div>
</div> --%>
      
      <!-- FOOTER -->
<div class="container">
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

    </div><!-- /.container -->


    <script src="${APP_PATH}/jquery/jquery-2.1.1.min.js"></script>
    <script src="${APP_PATH}/bootstrap/js/bootstrap.min.js"></script>
	<script src="${APP_PATH}/script/docs.min.js"></script>
    <script src="${APP_PATH}/script/back-to-top.js"></script>
    <script>
    $(".thumbnail img").css("cursor", "pointer");
    $(".thumbnail img").click(function(){
        window.location.href = "${APP_PATH}/shopping/project01";
    });
    </script>
  </body>
</html>