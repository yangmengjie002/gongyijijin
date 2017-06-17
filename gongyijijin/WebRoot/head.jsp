<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>主页头部</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<style type="text/css">
body {
	margin: 0px;
	padding: 0px;
}

#yi_div{
	width: 100%;
	height: 60px;
	margin-top: 1%;
}

#logo {
	font-size: 30px;
	margin-top: 1%;
	font-family: 华文彩云;
}

#login {
	margin-left: 70%;
}

#er_div {
	width: 100%;
	margin-top: 1%;
	font-size: 22px;
}

#er_div a:hover {
	background: #339900;
}
</style>


</head>
<body>
	<!--白色，浅蓝色，深蓝色，绿色，黄色，红色，黑色，对应的class为btn,btn btn-primary,btn btn-info,btn btn-success,btn btn-warning,btn btn-danger,btn btn-inverse-->

	

	<div class="container">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10" id="yi_div">
				<span id="logo"><img class="img-rounded"
					src="image/2191854.png" width="120" height="60" />
				</span>
				 <span id="login">您好，请&nbsp&nbsp
					<a href="login.jsp"><button class="btn btn-default btn btn-success">登录</button></a>
				</span>
				<span>
				&nbsp;&nbsp;<a href="register.jsp">点击注册</a>
				</span>	
			</div>
			<div class="col-md-1"></div>
		</div>

		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10" id="er_div">
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1"
								aria-expanded="false">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li><a href="home.jsp">首页</a>
								</li>
								<li><a href="pro_list.jsp">捐款</a>
								</li>
								<li><a href="moneyApply.jsp">申请资金</a>
								</li>
								<li><a href="authentication.jsp">申请项目</a>
								</li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-haspopup="true"
									aria-expanded="false">公益活动 <span class="caret"></span>
								</a>
									<ul class="dropdown-menu">
										<li><a href="#">Action</a>
										</li>
										<li><a href="#">Another action</a>
										</li>
										<li><a href="#">Something else here</a>
										</li>
										<li role="separator" class="divider"></li>
										<li><a href="#">Separated link</a>
										</li>
										<li role="separator" class="divider"></li>
										<li><a href="#">One more separated link</a>
										</li>
									</ul></li>
							</ul>
							<form class="navbar-form navbar-left">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="搜索">
								</div>
								<button class="btn btn-info" type="submit">
									<span class="glyphicon glyphicon-search"></span>
								</button>
							</form>
							<ul class="nav navbar-nav navbar-right">
								<li><a href="MyCenter.jsp">个人中心</a>
								</li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-haspopup="true"
									aria-expanded="false">帮助 <span class="caret"></span>
								</a>
									<ul class="dropdown-menu">
										<li><a href="#">Action</a>
										</li>
										<li><a href="#">Another action</a>
										</li>
										<li><a href="#">Something else here</a>
										</li>
										<li role="separator" class="divider"></li>
										<li><a href="#">Separated link</a>
										</li>
									</ul></li>
							</ul>
						</div>
						<!-- /.navbar-collapse -->
					</div>
					<!-- /.container-fluid -->
				</nav>
			</div>
			<div class="col-md-1"></div>
		</div>
	</div>
	




	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>

</html>
