<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>审核委员会会资金审核</title>
<!-- Bootstrap -->
<link
	href="${pageContext.request.contextPath}/admin/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<link
	href="${pageContext.request.contextPath}/admin/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet" media="screen">


<style type="text/css">
body {
	background-color: #E6E6E6;
}

#council {
	margin-top: 1%;
}

#council_div {
	margin: 3% 1% 1% 1%;
	font-weight: bold;
	font-size: 18px;
}

#council_row {
	margin-top: 5%;
}

#council_check {
	font-size: 22px;
}

#council_check_geren {
	margin-left: 70px;
}
</style>
<script type="text/javascript">
	
	function deleteUser(id) {
		if (confirm("确认驳回吗？")) {
			location.href="firstCheck_update.action?consent="+id;
		}
		
	}
	
	function motifyUser(id){
		if (confirm("确认同意吗？")) {
			location.href="firstCheck_update2.action?reject="+id;
		}
	}

	window.onload = function(){
		var pageNo=1;
		$("#selectBtn").click(function(){
			alert("11111111111");
			pageNo=1;
	
			$.ajax({
				
				url:"firstCheck_select.action",
				type:"post",
				data:{
					"proName":$("#council_ProName").val(),
					"money":$("#council_money").val(),
					"userName":$("#council_username").val(),
					"checkStatusId":$("input[type='radio'][checked]").val(),
					"currentPage":pageNo},
				dataType:"JSON",
				success:function(data){
				alert("11111111"),
					alert(data.list1[0].checkId);
					$("#tbody").empty();
					var str="";
					for(var i=0;i<data.list1.length;i++){
						str += "<tr>"
						str+="<td>"+data.list1[i].checkId+"</td>";
						str+="<td>"+data.list1[i].proName+"</td>";
						str+="<td>"+data.list1[i].userName+"</td>";
						str+="<td>"+data.list1[i].money+"</td>";
						str+="<td>"+data.list1[i].reason+"</td>";
						
					
						str+="<td><button class='btn btn-danger btn-xs' onclick='motifyUser("+data.list1[i].checkId+")' name='consent'  value='${"+data.list1[i].checkId+"}'>同意</button><button class='btn btn-danger btn-xs' onclick='deleteUser("+data.list1[i].checkId+")'  name='reject' value='${"+data.list1[i].checkId+"}'>驳回</button></td>";
						str+="</tr>";
					}
					$("#tbody").html(str);
					$("#up_down").html("第"+data.currentPage+"页/共"+data.allPage+"页");
				}
			});
		});
		
		$("#up").click(function(){
		
			$.ajax({
				
				url:"firstCheck_select.action",
				
				type:"post",
				data:{
					"proName":$("#council_ProName").val(),
					"money":$("#council_money").val(),
					"userName":$("#council_username").val(),
					"checkStatusId":$("input[type='radio'][checked]").val(),
					"currentPage":++pageNo},
				dataType:"JSON",
				success:function(data){
					alert(data.list1[0].checkId);
					$("#tbody").empty();
					var str="";
					for(var i=0;i<data.list1.length;i++){
						str += "<tr>"
						str+="<td>"+data.list1[i].checkId+"</td>";
						str+="<td>"+data.list1[i].proName+"</td>";
						str+="<td>"+data.list1[i].userName+"</td>";
						str+="<td>"+data.list1[i].money+"</td>";
						str+="<td>"+data.list1[i].reason+"</td>";
						
						
						str+="<td><button class='btn btn-danger btn-xs' onclick='motifyUser("+data.list1[i].checkId+")'  name='consent' value='${"+data.list1[i].checkId+"}'>同意</button><button class='btn btn-danger btn-xs' onclick='deleteUser("+data.list1[i].checkId+")'  name='reject' value='${"+data.list1[i].checkId+"}'>驳回</button></td>";
						str+="</tr>";
					}
					alert("up_____");
					$("#tbody").html(str);
					$("#up_down").html("第"+data.currentPage+"页/共"+data.allPage+"页");
				}
			});
		});
		
		$("#down").click(function(){
		
			if(pageNo<=1){
				pageNo=2;
			}
			$.ajax({
				
				url:"firstCheck_select.action",
				type:"post",
				data:{
					"proName":$("#council_ProName").val(),
					"proId":$("#council_Id").val(),
					"firstCheckEmp":$("#council_username").val(),
					"checkStatusId":$("input[type='radio'][checked]").val(),
					"currentPage":--pageNo},
				dataType:"JSON",
				success:function(data){
					alert(data.list1[0].checkId);
					$("#tbody").empty();
					var str="";
					for(var i=0;i<data.list1.length;i++){
						str += "<tr>"
						str+="<td>"+data.list1[i].checkId+"</td>";
						str+="<td>"+data.list1[i].proName+"</td>";
						str+="<td>"+data.list1[i].userName+"</td>";
						str+="<td>"+data.list1[i].money+"</td>";
						str+="<td>"+data.list1[i].reason+"</td>";
						
						
						str+="<td><button class='btn btn-danger btn-xs' onclick='motifyUser("+data.list1[i].checkId+")'  name='consent' value='${"+data.list1[i].checkId+"}'>同意</button><button class='btn btn-danger btn-xs' onclick='deleteUser("+data.list1[i].checkId+")'  name='reject' value='${"+data.list1[i].checkId+"}'>驳回</button></td>";
						str+="</tr>";
					}
					alert("down_____");
					$("#tbody").html(str);
					$("#up_down").html("第"+data.currentPage+"页/共"+data.allPage+"页");
				}
			});
		});
	} 
	
		$(".form_datetime").datetimepicker({
			language: 'zh-CN',
			format: "yyyy-mm-dd hh:ii",
			autoclose: true,
			todayBtn: true,
			startDate: "2013-02-14 10:00",
			minuteStep: 10
		})
</script>

</head>

<body>
	<!-- <form action="firstCheck_select.action" method="post"> -->
		<div id="council">
		<div class="container-fluid">
				
					<div class="col-xs-5">
						<div id="council_div">项目名称</div>
						<div class="input-group">
							<span class="input-group-addon" id="basic-addon1">项目名称:</span> <input
								type="text" class="form-control" placeholder="Username"
								aria-describedby="basic-addon1" id="council_ProName" name="proName"/>
						</div>
					</div>
					<div class="col-xs-5">
						<div id="council_div">按项目申请金额查询</div>
						<div class="input-group">
							<span class="input-group-addon" id="basic-addon1">ID:</span> <input
								type="text" class="form-control" placeholder="Username"
								aria-describedby="basic-addon1" id="council_money" name="money"/>
						</div>
					</div>		
					<div class="col-xs-5">
						<div id="council_div">按照申请人名称搜索</div>
						<div class="input-group">
							<span class="input-group-addon" id="basic-addon1">负责人:</span> <input
								type="text" class="form-control" placeholder="Username"
								aria-describedby="basic-addon1" id="council_username" name="userName"/>
						</div>
					</div>
					<div class="col-xs-5"></div>.
					<div></div>
	
					<div class="row">
						<div class="col-xs-5">
							<div id="council_div">按项目审批进度</div>
							<div class="input-group">
								<input id="radio1" type="radio" class="checkbox-primary" name="CheckStatusId" value="1"> 
								<label for="radio1" id="council_check">已审批 </label> 
								<span id="council_check_geren"> 
									<input id="radio1" type="radio" name="CheckStatusId" value="3" /> 
									<label for="radio1" id="council_check"> 未审批 </label> 
								</span>
							</div>
						</div>
						
						<div class="col-xs-2">
							<input type="button" class="btn btn-primary btn-lg" id="selectBtn"
								value="查询项目" />
						</div>
					</div>					
			</div>

			<div id="council_row" class="col-lg-11 col-md-11 col-sm-11 col-xs-11">
				<table class="table">
					<tr>
						<!-- <p class="text-center">字体居中</p> -->
						<th>资金审核ID</th>
						<th>项目名称 </th>
						<th>资金使用申请人</th>
						<th>申请金额</th>
						<th>申请原因</th>
						<th>审核意见</th>
						
						
					</tr>
					<tbody id="tbody">
						<c:forEach items="${bean.list}" var="aa" varStatus="ab">
							<tr>
							
							
								<td>${aa.CheckId}</td>
								<td>${aa.proName}</td>
								<td>${aa.userName}</td>
								<td>${aa.money}</td>
								<td>${aa.reason}</td>
								<td>
								
									<a href="firstCheck_update.action"><button class="btn btn-danger btn-xs"
										onclick="deleteUser(${aa.checkId})">同意</button></a>
									<a href="firstCheck_update.action"><button class="btn btn-danger btn-xs"
										onclick="motifyUser(${aa.checkId})">驳回</button></a>
								</td>
									
							</tr>
						</c:forEach>
					</tbody>

				</table>
				<a id="down">上一页</a><span id="up_down">第${bean.currentPage}页/共${bean.allPage}页</span><a
				id='up'>下一页</a>
			</div>



		</div>
	<!-- </form> -->












	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/jquery/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/jquery/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
	<script type="text/javascript">
	
		
	</script>            

</body>
</html>
