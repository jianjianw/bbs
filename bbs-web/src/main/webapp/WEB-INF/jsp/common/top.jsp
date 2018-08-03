<%@page pageEncoding="UTF-8"%>
<div class="container">
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.html" style="font-size:32px;">个人信息</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse" style="float:right;">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="glyphicon glyphicon-user"></i> ${loginUser.username}<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="member01.jsp"><i class="glyphicon glyphicon-scale"></i> 会员中心</a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-comment"></i> 消息</a></li>
                            <li class="divider"></li>
                            <li><a href="${APP_PATH}/logout"><i class="glyphicon glyphicon-off"></i> 退出系统</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

</div>
