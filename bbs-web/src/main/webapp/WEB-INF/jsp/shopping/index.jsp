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
          <img src="${APP_PATH}/img/202.jpg" alt="First slide">
        </div>
        <div class="item" onclick="window.location.href='${APP_PATH}/shopping/project01'" style="cursor:pointer;">
          <img src="${APP_PATH}/img/204.jpg" alt="Second slide">
        </div>
        <div class="item" onclick="window.location.href='${APP_PATH}/shopping/project01'" style="cursor:pointer;">
          <img src="${APP_PATH}/img/201.jpg" alt="Third slide">
        </div>
		  <div class="item" onclick="window.location.href='${APP_PATH}/shopping/project01'" style="cursor:pointer;">
			  <img src="${APP_PATH}/img/img2.jpg" alt="Third slide">
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
          <h2>这个时代还流行送花吗？</h2>
          <p>如果你觉得送花没用的话，你就不用送了</p>
          <p><a class="btn btn-default" href="${APP_PATH}/shopping/project01" role="button">项目详情 &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="${APP_PATH}/img/p2.jpg" alt="Generic placeholder image" style="width: 140px; height: 140px;">
          <h2>NEOKA智能手环</h2>
          <p>要运动更要安全，这款、名为“蝶舞”的NEOKA-V9100智能运动手环为“安全运动而生”。</p>
          <p><a class="btn btn-default" href="${APP_PATH}/shopping/project01" role="button">项目详情 &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="${APP_PATH}/img/p3.png" alt="Generic placeholder image" style="width: 140px; height: 140px;">
          <h2>驱蚊扣</h2>
          <p>随处使用的驱蚊纽扣，<br>解决夏季蚊虫问题。</p>
          <p><a class="btn btn-default" href="${APP_PATH}/shopping/project01" role="button">项目详情 &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->
      
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
						<img alt="300x200" src="${APP_PATH}/img/product-1.jpg" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">活性富氢净水直饮机</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2017-20-20 </div>
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
						<img alt="300x200" src="${APP_PATH}/img/product-2.gif" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">酷驰触控龙头，智享厨房黑科技</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2017-20-20 </div>
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
						<img alt="300x200" src="${APP_PATH}/img/product-3.png" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">小熊猫鱼眼全景安防摄像机</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2017-20-20 </div>
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
						<img alt="300x200" src="${APP_PATH}/img/product-4.jpg" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">一款精致的机械表</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2017-20-20 </div>
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
						<img alt="300x200" src="${APP_PATH}/img/product-5.jpg" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">活性富氢净水直饮机</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2017-20-20 </div>
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
						<img alt="300x200" src="${APP_PATH}/img/product-6.jpg" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">酷驰触控龙头，智享厨房黑科技</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2017-20-20 </div>
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
						<img alt="300x200" src="${APP_PATH}/img/product-7.jpg" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">小熊猫鱼眼全景安防摄像机</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2017-20-20 </div>
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
						<img alt="300x200" src="${APP_PATH}/img/product-8.jpg" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">一款精致的机械表</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2017-20-20 </div>
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
						书籍 <small style="color:#FFF;">网络天下肥美</small>
					</h3>
				</div>
				<div class="mBd" style="padding-top:10px;">
			<div class="row">
				<div class="col-md-3">
					<div class="thumbnail">
						<img alt="300x200" src="${APP_PATH}/img/product-9.jpg" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">活性富氢净水直饮机</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2017-20-20 </div>
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
						<img alt="300x200" src="${APP_PATH}/img/product-2.gif" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">酷驰触控龙头，智享厨房黑科技</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2017-20-20 </div>
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
						<img alt="300x200" src="${APP_PATH}/img/product-3.png" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">小熊猫鱼眼全景安防摄像机</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2017-20-20 </div>
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
						<img alt="300x200" src="${APP_PATH}/img/product-4.jpg" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">一款精致的机械表</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2017-20-20 </div>
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
						其他 <small style="color:#FFF;">发现更多惊喜</small>
					</h3>
				</div>
				<div class="mBd" style="padding-top:10px;">
			<div class="row">
				<div class="col-md-3">
					<div class="thumbnail">
						<img alt="300x200" src="${APP_PATH}/img/product-1.jpg" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">活性富氢净水直饮机</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2017-20-20 </div>
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
						<img alt="300x200" src="${APP_PATH}/img/product-2.gif" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">酷驰触控龙头，智享厨房黑科技</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2017-20-20 </div>
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
						<img alt="300x200" src="${APP_PATH}/img/product-3.png" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">小熊猫鱼眼全景安防摄像机</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2017-20-20 </div>
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
						<img alt="300x200" src="${APP_PATH}/img/product-4.jpg" />
						<div class="caption">
							<h3 class="break">
								<a href="${APP_PATH}/shopping/project01">一款精致的机械表</a>
							</h3>
                            <p>
                                <div style="float:left;"><i class="glyphicon glyphicon-screenshot" title="目标金额" ></i> $20,000 </div>
                                <div style="float:right;"><i title="截至日期" class="glyphicon glyphicon-calendar"></i> 2017-20-20 </div>
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
      
      <!-- FOOTER -->
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div id="footer">
				<div class="footerNav">
					 <a rel="nofollow" href="http://www.atguigu.com">关于我们</a> | <a rel="nofollow" href="http://www.atguigu.com">服务条款</a> | <a rel="nofollow" href="http://www.atguigu.com">免责声明</a> | <a rel="nofollow" href="http://www.atguigu.com">网站地图</a> | <a rel="nofollow" href="http://www.atguigu.com">联系我们</a>
				</div>
				<div class="copyRight">
					Copyright ?2017-2017atguigu.com 版权所有
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