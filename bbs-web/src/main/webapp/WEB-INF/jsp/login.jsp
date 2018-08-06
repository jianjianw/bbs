<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="keys" content="">
    <meta name="author" content="">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
      <style>

      </style>
  </head>
  <body background="${pageContext.request.contextPath}/img/05.jpg">
    <%--<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <div><a class="navbar-brand" href="index.html" style="font-size:32px;">我的小宇宙呢</a></div>
        </div>
      </div>
    </nav>--%>

    <div class="container">
      <h1 style="color:red">${param.errorMsg}</h1>
      <form id="loginForm" action="doLogin" method="post" class="form-signin" role="form">
        <h2 class="form-signin-heading"><i class="glyphicon glyphicon-user"></i> login</h2>
		  <div class="form-group has-success has-feedback">
			<input type="text" class="form-control" id="username" name="username" placeholder="username" value="${cookie.username.value}" autofocus>
			<span class="glyphicon glyphicon-user form-control-feedback"></span>
		  </div>
		  <div class="form-group has-success has-feedback">
			<input type="password" class="form-control" id="password" name="password" placeholder="password" value="${cookie.password.value}"style="margin-top:10px;">
			<span class="glyphicon glyphicon-lock form-control-feedback"></span>
		  </div>

        <div class="checkbox">
          <label>
            <input type="checkbox"  id = "remember" name = "remember" value="remember" checked="checked"> remember me
          </label>
        </div>
        <a class="btn btn-lg btn-success btn-block" onclick="dologin()" > 登录</a>
      </form>
    </div>
    <script src="${pageContext.request.contextPath}/jquery/jquery-2.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/layer/layer.js"></script>
    <script>

    $(function(){
        $('#password').bind('keypress',function(event){
            if(event.keyCode == "13")
            {
                dologin();
            }
        });
    });

    function dologin() {
        // 非空校验
        var username = $("#username").val();
        // 表单元素的value取值不会为null, 取值是空字符串
        if ( username == "" ) {
            layer.msg("账号不能为空", {time:2000, icon:5, shift:6}, function(){
            });
        	return;
        }
        var password = $("#password").val();
        if ( password == "" ) {
        	//alert("用户登录密码不能为空，请输入");
            layer.msg("密码不能为空", {time:2000, icon:5, shift:6}, function(){
            });
        	return;
        }
        var remember = $("#remember").val();
        
        // 提交表单
        //alert("提交表单");
        //$("#loginForm").submit();
        // 使用AJAX提交数据
        var loadingIndex = null;
        $.ajax({
        	type : "POST",
        	url  : "doAJAXLogin",
        	data : {
        		"username" : username,
        		"password"  : password,
                "remember":remember
        	},
        	beforeSend : function(){
        		loadingIndex = layer.msg('处理中', {icon: 16});
        	},
        	success : function(result) {
        		layer.close(loadingIndex);
        		if (result.success) {
        			window.location.href = "${APP_PATH}/future/showme";
        		} else {
                    layer.msg("不是密码错了就是账号错了", {time:3000, icon:5, shift:6}, function(){
                    	
                    });
        		}
        	}
        });
    }
    </script>
  </body>
</html>