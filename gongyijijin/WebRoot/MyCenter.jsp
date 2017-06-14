<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>个人中心</title>
	<style type="text/css">
		*{  padding:0 auto; margin:0 auto;}
		#header_center{
				height:11%;
				padding:13px;
				margin-left:12%;
		}
		#vessel{
				background-image:url(image/268.jpg);
		}
		.content{
				border:1px solid gray;
				height:490px;
				width:70%;
				margin:0 auto;
		}
		.content_top{
				height:13%;
				width:95%;
				margin:0 auto;
				margin-top:10px;
				border:0px solid gray;
		}
		.detail{
				border:1px solid gray;
				height:360px;
				width:88%;
		}
		.detail_one{
				border:0px solid gray;
		}
		.detail_top{
				margin-left:5%;
		}
		
	</style>
	<link href="css/bootstrap.min.css" rel="stylesheet">
  </head>
  
  <body>
  <div id="vessel">
  	<div>
  	  <div class="header">
		<nav class="navbar navbar-default">
		  <div class="container-fluid" id="header_center">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
			  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			  </button>
			  <a class="navbar-brand" href="#" >公益基金 </a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			  <ul class="nav navbar-nav">
				<li class=""><a href="home.jsp">首页 <span class="sr-only">(current)</span></a></li>
				<li><a href="pro_list.jsp">捐款 </a></li>
				<li><a href="authentication.jsp">申请 </a></li>
				<li class="dropdown">
				  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">公益活动 <span class="caret"></span></a>
				  <ul class="dropdown-menu">
					<li><a href="#">春蕾计划</a></li>
					<li><a href="#">关爱儿童</a></li>
					<li><a href="#">旧衣捐赠</a></li>
					<li role="separator" class="divider"></li>
					<li><a href="#">走进孤儿院</a></li>
					<li role="separator" class="divider"></li>
					<li><a href="#">融入老人院</a></li>
				  </ul>
				</li>
			  </ul>
			  <form class="navbar-form navbar-left">
				<div class="form-group">
				  <input type="text" class="form-control" placeholder="搜索公益项目">
				</div>
				<button type="submit" class="btn btn-default">搜索</button>
			  </form>
			  <ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="#">个人中心 </a></li>
				<li class="dropdown">
				  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">帮助 <span class="caret"></span></a>
				  <ul class="dropdown-menu">
					
					<li role="separator" class="divider"></li>
					<li><a href="#">联系客服</a></li>
				  </ul>
				</li>
			  </ul>
			</div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav>
	</div>
  </div> 
  <div class="content">
  	<div class="content_top">
			<div id="nav-tabs" >
				<div>
				  <!-- 导航选项卡 -->
				  <ul class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">我的捐款</a></li>
					<li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">我的活动</a></li>
					<li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">我的项目</a></li>
					
				  </ul>

				  <!-- 标签页 -->
				  <div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="home">1
						<div class="detail">
							<div class="detail_top"><h4><b>捐款明细</b></h4></div>
							<div class="detail_one">
								<table class="table">
									<tr>
										<td>序号</td>
										<td>捐款时间</td>
										<td>捐款金额</td>
										<td>项目</td>
									</tr>
								</table><hr>
							</div>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane" id="profile">2</div>
					<div role="tabpanel" class="tab-pane" id="messages">3</div>
				
				  </div>
				</div>
			</div>
		</div>

 
  	<div></div>
  </div>
  <jsp:include page="bottom.jsp"></jsp:include>
	  <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
      <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  </body>
</html>
<jsp:include page="bottom.jsp"></jsp:include>
