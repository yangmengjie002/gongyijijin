<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>My JSP 'lejuan.jsp' starting page</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<style>
div {
	border: 0px solid #00CC00;
}

#solid {
	border: 2px solid #00CC00;
}

#roww {
	position: center;
}

#col_md_a {
	margin-top: 0px;
	font-size: 2px;
}

li {
	float: left;
	list-style: none;
}

#span {
	font-size: 20px;
	color: #939393;
}

#schedule {
	margin-top: 10px;
}

#span_status {
	font-size: 10px;
	text-align: center;
}

#status {
	margin-top: 10px;
}

#money {
	font-size: 18;
}

#time {
	margin-top: 20px;
}

#time_one {
	float: left;
	font-size: 15px;
}

#time_two {
	margin-left: 120px;
	font-size: 15px;
}

#money_sum {
	padding_top: 50px;
	background-color: #DBDBDB;
}

#money_sum_one {
	margin_top: 40px;
	float: left;
	padding-top: 5px;
}

#money_sum_two {
	padding-top: 40px;
	margin-left: 60px;
}

#money_submit {
float: left;
	margin-left: 60px;
	margin-top: 10px;
}

#submit_input1 {
	width: 70px;
	height: 30px;
	background-color: #339900;
}

#submit_input2 {
	width: 70px;
	height: 30px;
}
#left_img{
width:33%;
height:280px;
background-image:url(500.jpg);
packground-repeat:no-repeat;
}
</style>
</head>

<body>


	<div class="row" id="roww">

		<div class="col-md-12">
			<div class="col-md-2"></div>

			<div id="col_md_a" class="col-md-3">

				<a id="body_top_a" href="">项目列表</a><span>&gt;</span> <a
					id="body_top_a" href="">乐捐首页</a><span>&gt;</span> <span>&nbsp;&nbsp;</span><span><FONT
					SIZE="5" COLOR="">95岁来人沧桑晚年</FONT> </span>
			</div>


		</div>
	</div>
	<div class="row">
		<div class="col-md-2"></div>
		<div id="solid" class="col-md-8"></div>
	</div>
	<div class="row">
		<div class="col-md-2"></div>
		<div id="left_img"class="col-md-4">
			
		</div>
		<div class="col-md-4">
			<div id="status" class="row">
				<div id="span_status" class="col-md-2"></div>
				<div id="span_status" class="col-md-2">申请</div>
				<div id="span_status" class="col-md-2">审核</div>
				<div id="span_status" class="col-md-2">募捐</div>
				<div id="span_status" class="col-md-2">执行</div>
				<div id="span_status" class="col-md-2">结束</div>

			</div>
			<div class="row">
				<div class="col-md-3">
					<span id="span">状态</span>
				</div>


				<div id="schedule" class="progress" class="col-md-6">
					<div class="progress-bar progress-bar-success" style="width: 20%">
						<span class="sr-only">15% Complete (success)</span>
					</div>
					<div class="progress-bar progress-bar-warning progress-bar-striped"
						style="width: 20%">
						<span class="sr-only">15% Complete (warning)</span>
					</div>
					<div class="progress-bar progress-bar-danger" style="width: 20%">
						<span class="sr-only">15% Complete (danger)</span>
					</div>
					<div class="progress-bar progress-bar-striped " style="width: 20%">
						<span class="sr-only">15% Complete (danger)</span>
					</div>
					<div class="progress-bar progress-bar-info progress-bar-striped"
						style="width:20%">
						<span class="sr-only">15% Complete (danger)</span>
					</div>

				</div>
				<hr>
			</div>

			<div class="row">
				<div class="col-md-4">
					<img src="323.png" />
				</div>
				<div id="money" class="col-md-6">${user_oldmoney}元</div>
			</div>
			<div id="time">
				<div id="time_one">&nbsp;时间</div>
				<div id="time_two">
					2012-03-02<span>&nbsp;至&nbsp;</span>2013-02-01
				</div>
			</div>
			<div id="money_sum" class="row">

				<div id="money_sum_one">
					&nbsp;&nbsp;&nbsp;&nbsp; <span>金额</span>&nbsp;&nbsp;&nbsp; <input
						type="submit" value="50元" />&nbsp;&nbsp;&nbsp; <input
						type="submit" value="100元" />&nbsp;&nbsp;&nbsp; <input
						type="submit" value="200元" />
				</div>
				<div class="row" id="money_sum_two">
					<div class="col-lg-4">
						<div class="input-group">
							<span class="input-group-btn">
								<button class="btn btn-default" type="button">其他</button> </span> <input
								type="text" class="form-control" placeholder="元">
						</div>
					</div>
				</div>
				<!-- /input-group -->
				<div id="money_submit">
					<input id="submit_input1" type="submit" value="我要捐款" />&nbsp;&nbsp;&nbsp;
					<input id="submit_input2" type="submit" value="微信捐款" />&nbsp;&nbsp;&nbsp;

					
						<span class="yi_sp1">捐款次数：</span>
						 <span class="yi_sp2"id="project_donateNum">${don_id}</span>
					    <span class="yi_sp1">次</span>
					
				</div>


			</div>

		</div>

	</div>
	<%-- <script type="text/javascript">
		<div class=" ">
		<p class="">项目状态:<%if(_vo.status==1){%>募款中<%}else if(_vo.status==2){%>执行中<%}else if(_vo.status==3){%>已结束<%}%></p>
		<p class="">已筹：<span><%=_vo.donate.obtainMoney||0%></span>元&nbsp;&nbsp;<span><%=_vo.donate.donateNum||0%></span>人捐款</p>
		<%if(_vo.donate.needMoney > 0){
			var _par = parseInt((_vo.donate.obtainMoney/(_vo.donate.needMoney/100))*100);%>
		<div class="">
			<div class="">
				<p class=""><span style="width:<%=_par%>%" class="istrue"></span></p>
			</div>
			<div class=""><%=_par%>%</div>
		</div>
		<%}%>
		<%if(_vo.status == 1 && _vo.hide_donate != 1){%>
		<div class="">
			<a class="" href="" pName="<%=_vo.title%>" pid="<%=_vo.id%>" fid="<%=_vo.fundID%>" onclick="toDonate(this);">我要捐款</a>
		</div>
		<%}%>
	</div>
		
	
	
	</script> --%>


	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
