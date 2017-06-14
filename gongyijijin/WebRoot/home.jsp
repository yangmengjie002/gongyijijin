<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>My JSP 'home.jsp' starting page</title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<style>
* {
	margin: 0px;
	padding: 0px;
}
#home_two{
	margin-top:20%;
}


#yi_div {
	width: 100%;
}

#qiuyi {
	font-size: 30px;
	margin-left: 15%;
	margin-top: 2%;
}

#xinxi {
	width: 85%;
}

#xinxi1 {
	width: 80%;
}

#xinxi2 {
	width: 80%;
}

#xinxi3 {
	width: 80%;
}

#xinxi4 {
	width: 80%;
}

#xinxi5 {
	left: 28%;
	top: 50%;
	width: 80%;
}

#xinxi6 {
	left: 56%;
	top: 50%;
	width: 80%;
}

#div {
	margin-left: 74%;
}


#bobao {
	margin-left: 74%;
	font-size: 30px;
	letter-spacing: 5px;
	background-color: #CCCCCC;
	width: 280px;
	border-radius: 5px;
	margin-bottom:-8px;
	text-indext: 20px;
	margin-top:-35%;
}

.div {
	margin: 0 50px 50px 30px auto 0;
	width: 280px;
	height: 368px;
	background: #fff;
	border: 5px solid #ccc;
	border-radius: 5px;
	overflow: hidden;
	padding: 15px;
	cursor: pointer;
}

.div ul li {
	list-style: none;
	height: 44px;
	line-height: 44px;
	text-overflow: ellipsis;
	font-size: 17px;
	white-space: nowrap;
	overflow: hidden;
	border-radius: 5px;
}

.aa {
	background-color: #99FF66;
}

#button_one{
			border:0px solid gray;
			width:100%;
			height:160px;
			background:#F5F5F5;
			margin-top:35%;
		}
		body{
			text-align:center;
		}

</style>
<body>

<jsp:include page="head.jsp"></jsp:include>

	<div class="container">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10" id="yi_div">


				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="image/lunbo.png" alt="...">
							<!-- <div class="carousel-caption">
						...
						</div> -->
						</div>
						<div class="item">
							<img src="image/lunbo.png" alt="...">
							<!-- <div class="carousel-caption">
					...
					</div> -->
						</div>
						<div class="item">
							<img src="image/lunbo.png" alt="...">
							<!-- <div class="carousel-caption">
					...
					</div> -->
						</div>
					</div>
					<a class="left carousel-control" href="#carousel-example-generic"
						role="button" data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span> </a> <a
						class="right carousel-control" href="#carousel-example-generic"
						role="button" data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span> </a>
				</div>

			</div>
			<div class="col-md-1"></div>
		</div>

		<div class="container" id="home_two">
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-10" id="yi_div">



					<div id="xinxi">
						<div class="row" id="xinxi1">
							<div class="col-sm-6 col-md-4">
								<div class="thumbnail">
									<img src="xinxi1.png" alt="...">
									<div class="caption">
										<h3>Thumbnail label</h3>
										<p>...</p>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4">
								<div class="thumbnail">
									<img src="xinxi1.png" alt="...">
									<div class="caption">
										<h3>Thumbnail label</h3>
										<p>...</p>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4">
								<div class="thumbnail">
									<img src="xinxi1.png" alt="...">
									<div class="caption">
										<h3>Thumbnail label</h3>
										<p>...</p>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="row" id="xinxi4">
							<div class="col-sm-6 col-md-4">
								<div class="thumbnail">
									<img src="xinxi1.png" alt="...">
									<div class="caption">
										<h3>Thumbnail label</h3>
										<p>...</p>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4">
								<div class="thumbnail">
									<img src="xinxi1.png" alt="...">
									<div class="caption">
										<h3>Thumbnail label</h3>
										<p>...</p>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>

							<div class="col-sm-6 col-md-4">
								<div class="thumbnail">
									<img src="xinxi1.png" alt="...">
									<div class="caption">
										<h3>Thumbnail label</h3>
										<p>...</p>
										<p>
											<a href="#" class="btn btn-primary" role="button">Button</a>
											<a href="#" class="btn btn-default" role="button">Button</a>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="bobao">实时捐款播报</div>
					<div class="div" id="div">
						<ul>
							<li><span>王云明</span>&nbsp;&nbsp;<span>两分钟前</span>&nbsp;&nbsp;<span>5.0元</span>
							</li>
							<li class="aa"><span>周政言</span>&nbsp;&nbsp;<span>两分钟前</span>&nbsp;&nbsp;<span>0.1元</span>
							</li>
							<li><span>王云明</span>&nbsp;&nbsp;<span>两分钟前</span>&nbsp;&nbsp;<span>5.0元</span>
							</li>
							<li class="aa"><span>王云明</span>&nbsp;&nbsp;<span>两分钟前</span>&nbsp;&nbsp;<span>5.0元</span>
							</li>
							<li><span>王云明</span>&nbsp;&nbsp;<span>两分钟前</span>&nbsp;&nbsp;<span>5.0元</span>
							</li>
							<li class="aa"><span>王云明</span>&nbsp;&nbsp;<span>两分钟前</span>&nbsp;&nbsp;<span>5.0元</span>
							</li>
							<li><span>王云明</span>&nbsp;&nbsp;<span>两分钟前</span>&nbsp;&nbsp;<span>5.0元</span>
							</li>
							<li class="aa"><span>王云明</span>&nbsp;&nbsp;<span>两分钟前</span>&nbsp;&nbsp;<span>5.0元</span>
							</li>
						</ul>
					</div>
				</div>
					



				</div>
				<div class="col-md-1"></div>
			</div>
		</div>


		<div id="button_one">
		<div style="height:auto">
				<h2>联系我们</h2>
				<span>项目合作：gongyi@qq.com &nbsp;&nbsp;媒体合作:meiti@qq.com &nbsp;&nbsp;意见反馈|网友投诉</span>
				<hr>
				<div>
					<a href="#">公益慈善基金会</a>&nbsp;|&nbsp;<a href="#">关于慈善</a>&nbsp;|&nbsp;
					<a href="#">服务条款</a>&nbsp;|&nbsp;<a href="#">公益基金版权所有</a>&nbsp;&nbsp;
				</div>
		</div>
	</div>


<script type="text/javascript">
						var area = document.getElementById('div');
						var iliHeight = 150;//单行滚动的高度
						var speed = 50;//滚动的速度
						var time;
						var delay = 10;
						area.scrollTop = 0;
						area.innerHTML += area.innerHTML;//克隆一份一样的内容
						function startScroll() {
							time = setInterval("scrollUp()", speed);
							area.scrollTop++;
						}
						function scrollUp() {
							if (area.scrollTop % iliHeight == 0) {
								clearInterval(time);
								setTimeout(startScroll, delay);
							} else {
								area.scrollTop++;
								if (area.scrollTop >= area.scrollHeight / 2) {
									area.scrollTop = 0;
								}
							}
						}
						setTimeout(startScroll, delay)
					</script>


	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="css/jquery-2.1.3.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
