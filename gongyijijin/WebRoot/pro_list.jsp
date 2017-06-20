<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>My JSP 'pro_list.jsp' starting page</title>
    
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
     <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    
	<style type="text/css">
		*{
			left:0px;
			margin:0px;
		}
		.context{
			margin-left:8%;
			width:90%;
			
		}
		#aa{
			background-color:;
			border:1px solid red;
		}
		
		#col-md-1{
			text-align:center;
			line-height:100%;
		}
		#input1{
				width:150px;
		}
		
	</style>
  </head>
  
  <body>
  	<jsp:include page="head.jsp"></jsp:include>
  	 <div class="context">
  	  <div class="top">
			<div class="main_top_inner">
				<div class="lp_crumbs">
					<a href="#">乐捐首页</a><span>&gt;</span><a class="lp_crumbs_detail" href="#">项目列表</a><span>&gt;</span>
					<span class="pj_name" id="pj_name"></span>
				</div>
			</div>
		<hr/>
	  </div>
	  
	  <div class="container" id="pro_head">
		<div class="row">
			<div class="col-md-1">项目状态</div>
			<div class="col-md-1">
				<select>
					<option>募捐中</option>
					<option>执行中</option>
					<option>已结束</option>
					<option>全部</option>
				</select>
			</div>
			<div class="col-md-1">项目领域</div>
			<div class="col-md-1">
				<select>
					<option>全部分类</option>
					<option>疾病救助</option>
					<option>扶贫救灾</option>
					<option>教育助学</option>
					<option>其他</option>
				</select>
			</div>
			<div class="col-md-1">排序</div>
			<div class="col-md-1">
					<select>
					<option>默认排序</option>
					<option>剩余金额最少</option>
					<option>剩余时间最短</option>
					<option>多人帮助</option>
				</select>
			</div>
			<div class="col-md-1"></div>
			<div class="col-md-2">
				<div class="col-lg-6">
				    <div class="input-group">
				      <span class="input-group-btn">
				        <button class="btn btn-default" type="button">查询</button>
				      </span>
				      <input type="text" class="form-control" id="input1" placeholder="Search for...">
				    </div><!-- /input-group -->
				  </div>
			
			
			
				<!-- <div class="col-xs-4">
					<div class="input-group">
						<span class="input-group-addon add-on" id="basic-addon1"><i class="icon-th">查询</i></span>
						<input type="text" class="form-control date form_datetime" aria-describedby="basic-addon1">
					</div>
				</div>  -->
				
			</div>
		</div>
	  </div>
	  <!--后台出入数据  -->
	  <div class="container" id="">
		  <div class="row">
		  	<div class="col-md-12" id="aa">
		  		<div class="col-md-3"> </div>
		  		<div class="col-md-4">
		  			<table>
		  				<tr>
		  					<td><h3>老王娶媳妇</h3></td>
		  				</tr>
		  				<tr>
		  					<td>项目简介|</td>
		  					<td>老王想要娶媳妇</td>
		  				</tr>
		  				<tr>
		  					<td>筹款目标|</td>
		  					<td>多多益善</td>
		  				</tr>
		  				<tr>
		  					<td>筹款时间|</td>
		  					<td>2017-3至永远</td>
		  				</tr>
		  				<tr>
		  					<td>执行方|</td>
		  					<td>老周</td>
		  				</tr>
		  			</table>
		  		</div>
		  		<div class="col-md-3">
		  			<table>
							<%-- <c:forEach items="${dontable1 }" var="don"> --%>
								<tr>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td id="">项目状态：募捐中</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td id="">已募：${don_id }元
										&nbsp;&nbsp;已捐款：&nbsp;${user_oldmoney }次</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
								</tr>

								<tr>
									<td id=""><input type="button" value="我要捐款"
										onClick="location.href='lejuan.jsp'"></td>
								</tr>
							<%-- </c:forEach> --%>
						</table>
		  		</div>
		  	
		  	
		  	</div>
		  	
		  </div>
	  </div>
	</div>
  	
  	
  	
  </body>
  	<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js">
		
	</script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap.js"></script>
  
</html>
