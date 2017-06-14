<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'donation_page.jsp' starting page</title>
    	<link href="../css/bootstrap-responsive.css" rel="stylesheet">
	    <link href="../css/bootstrap.min.css" rel="stylesheet" media="screen">
	    <link href="../css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
	  
    <style type="text/css">
	    *{
	    left:0px;
	    margin-left:0px;
	    }
    	.logo_div{
    		float:right;
    	}
    	.context{
    		width:80%;
    		top:100px;
    		postition:absolute;
    		left:10%;
    		right:10%;
    		border:1px red solid;
    		margin:10px auto;
    	}
    	.top{
    		height:50px;
    		width:100%;
    		border:1px yellow solid;
    	}
    	.center{
    		width:100%;
    		height:300px;
    		border:1px blue solid;
    	}
    	/*center_left  */
    	.center_left{
    		width:49%;
    		height:280px;
    		border:1px yellow solid;
    		float:left;
    	}
    	/*center_right  */
    	.center_right{
    		width:49%;
    		height:280px;
    		border:1px yellow solid;
    		float:left;
    	}
    	.center_right_top{
    		width:90%;
    		left:5%;
    		right:3%;
    		border:1px black solid;
    		height:20%;
    	}
    	.center_right_top_left{
    		width:20%;
    		border:1px red solid;
    		height:98%;
    		float:left;    		
    	}
    	.center_right_top_right{
    		width:78%;
    		border:1px red solid;
    		height:98%;
    		float:left;
    		
    	}
    	
    	.center_right_center{
    		width:90%;
    		left:5%;
    		right:3%;
    		border:1px black solid;
    		height:35%;
    	}
    	.center_right_center_left{
    		height:100%;
    		width:20%;
    		float:left;
    	}
    	.center_right_center_left_top{
    		height:48%;
    		width:98%;
    		border:1px red solid;
    	}
    	.center_right_center_left_footer{
    		height:48%;
    		width:98%;
    		border:1px red solid;
    	}
    	.center_right_center_right{
    		height:100%;
    		width:79%;
    		float:right;
    	}
    	.center_right_center_right_top{
    		height:48%;
    		width:99%;
    		border:1px red solid;
    	}
    	.center_right_center_right_footer{
    		height:48%;
    		width:99%;
    		border:1px red solid;
    	}
    	/* .center_right_footer */
    	.center_right_footer{
    		width:90%;
    		left:5%;
    		right:3%;
    		border:1px black solid;
    		height:35%;
    	}
    	
    	ul{
    		
    		text-decoration:none;
    		list-style:none;
    	}
    	.don_count li{
    		
    		float:left;
    		margin-left:0px;	
    	}
    	#don_count_num{
    		width:20%;
    		left:0px;
    		border:1px red solid;
    	}
    	#don_count_num1,#don_count_num2,#don_count_num3{
    		width:13%;
    	}
    	#don_count_num4{
    		width:40%;
    	}
    	#don_count_num5{
    	 	width:30%;
    	 
    	}
    	#don_count_per_don{
    		width:33%;
    		border:1px red solid;
    	}
    	/*.title  */
    	
    	
    	
    	
    	.title{
    		height:50px;
    		border:1px yellow solid;
    		
    	}
    	/*.message  */
    	.message{
    		width:100%;
    	}
    	/*.message_left  */
    	.message_left{
    		height:auto;
			width:68%;
			border:1px red solid;
			float:left;
    	}
    	#progrom_button1,#program_button{
    		height:50px;
    		width:50px;
    		float:left;
    	}
    	#pro{
			display:none;
		}
		
		/*.message_right  */
    	.message_right{
    		height:auto;
			width:28%;
			border:1px red solid;
			float:right;
    	}
    	
    	.message_right_first{
    		width:90%;
    		height:100px;
    	}	
    	.message_right_second{
    		width:90%;
    		height:100px;
    	}
    	.message_right_three{
    		width:90%;
    		height:100px;
    	}
    	.message_right_four{
    		width:90%;
    		height:100px;
    	}
    	.message_right_five{
    		width:90%;
    		height:100px;
    	}
    	.message_right_six{
    		width:90%;
    		height:100px;
    	}
    
    	
    	
	</style>
	 
	
    <!-- Include all compiled plugins (below), or include individual files as needed -->
   
</head>
  
 <body>
 
 	<div class="context">
 		<!-- 首部 -->
		<div class="top">
			<div class="main_top_inner">
				<div class="lp_crumbs">
					<a href="#">乐捐首页</a><span>&gt;</span><a class="lp_crumbs_detail" href="#">项目列表</a><span>&gt;</span>
					<span class="pj_name" id="pj_name"></span>
					<span>春雷计划 </span>
				</div>
				<div class="logo_div">
					<span class="share_span">分享到:</span>
				</div>
			</div>
		</div>
		<!--中间部分  -->
		
		<div class="center">
			<div class="center_left"></div>
			<div class="center_right">
				<div class="center_right_top"> 
					<div class="center_right_top_left">进展</div>
					<div class="center_right_top_right"></div>
				</div>
				
				<!-- 今天截止 -->
				
				
				<div class="center_right_center">
					<div class="center_right_center_left">
						<div class="center_right_center_left_top">时间</div>
						<div class="center_right_center_left_footer">已筹</div>
					</div>
					<div class="center_right_center_right">
						<div class="center_right_center_right_top"></div>
						<div class="center_right_center_right_footer"></div>
					</div>
				 </div>
				 
				<div class="center_right_footer"> 
					<ul>
						<li>
							<ul class="don_count">
								<li id="don_count_num">金额</li>
								<li id="don_count_num1">10</li>
								<li id="don_count_num2">20</li>
								<li id="don_count_num3">50</li>
								<li id="don_count_num4">其他<input type="text" id="don_count_num5"></li>
							</ul>
						 </li>
						<li> 
							<ul class="don_count">
								<li id="don_count_per_don"><input type="submit" value="我要捐款"></li>
								
								<li id="don_count_per_don">捐款人数</li>
								<li id="don_count_per_don"><div id="don_count_per_num"></div></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="title">
			<div id="progrom_button1"><input type="button"  onclick="showContent('mes')"value="项目信息"></div>
			<div id="progrom_button2"><input type="button" onclick="showContent('pro')" value="项目进展" ></div>
		</div>
		<!--下部  -->
		<div class="message">
			<div class="message_left">
				<div>
				    
				<!--点卡开始-->
					<div id="mes">
						<img src="images/4.jpg"></img>
					</div>
						<!--点卡结束-->
					<!--游戏开始-->
					<div id="pro">
						<img src="images/5.jpg"></img>
				<!--游戏结束-->
			 		</div>
			  </div>
		   </div> 
			<div class="message_right">
				<div class="message_right_first"></div>
				<div class="message_right_second"></div>
				<div class="message_right_three"></div>
				<div class="message_right_four"></div>
				<div class="message_right_five"></div>
				<div class="message_right_six"></div>
				<div class="message_right_seven"></div>
			</div>
		</div> 
	</div>
    <script language="javascript" type="text/javascript">
		function  showContent(target)
		{
			document.getElementById("mes").style.display="none";
			document.getElementById("pro").style.display="none";
			document.getElementById(target).style.display="block";	
			
		}
	</script>
 </body>
     <script type="text/javascript" src="../js/jquery-2.1.3.min.js"></script>
     <script src="../js/bootstrap.min.js"></script>
     <script src="../js/bootstrap.js"></script>
</html>
