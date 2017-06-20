<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>title</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
</style>
<script type="text/javascript">
	function deleteUser(id) {
		if (confirm("确认删除吗？")) {
			alert(id);
		}
		
	}
	
	function motifyUser(id){
		alert(id);
	}
	
	
	
	window.onload = function(){
		var m = 0;
		var pageNo=1;
		$("#selectBtn").click(function(){
			pageNo=1;
			$.ajax({
				url:"emp_selectEmp1.action",
				type:"post",
				data:{"emp_id":$("#basic-url1").val(),"emp_hire_date":$("#basic-url2").val(),"emp_user":$("#basic-url3").val(),"emp_status_id":$("#basic-url4").val(),"currentPage":pageNo},
				dataType:"JSON",
				success:function(data){
					$("#tbody").empty();
					var str="";
					for(var i=0;i<data.list.length;i++){
						str += "<tr>"
						str+="<td><input type='checkbox' name='employee'/></td>";
						str+="<td>"+data.list[i].emp_id+"</td>";
						str+="<td>"+data.list[i].emp_user+"</td>";
						str+="<td>"+data.list[i].emp_name+"</td>";
						str+="<td>"+data.list[i].emp_phone+"</td>";
						str+="<td>"+data.list[i].emp_leave_date+"</td>";
						
						if(data.list[i].emp_hire_date==1){
							str+="<td>在职</td>";
						}else{
							str+="<td>离职</td>";
						}
						str+="<td><button class='btn btn-danger btn-xs' onclick='motifyUser("+data.list[i].emp_id+")'>修改</button><button class='btn btn-danger btn-xs' onclick='deleteUser("+data.list[i].emp_id+")'>删除</button></td>";
						str+="</tr>";
					}
					m=data.allPage;
					$("#tbody").html(str);
					$("#up_down").html("第"+data.currentPage+"页/共"+data.allPage+"页");
				}
			});
		});
		
		$("#up").click(function(){
			if(pageNo>=${eb.allPage}){
				pageNo=${eb.allPage}-1;
			}
			$.ajax({
				url:"emp_selectEmp1.action",
				type:"post",
				data:{"emp_id":$("#basic-url1").val(),"emp_hire_date":$("#basic-url2").val(),"emp_user":$("#basic-url3").val(),"emp_status_id":$("#basic-url4").val(),"currentPage":++pageNo},
				dataType:"JSON",
				success:function(data){
					$("#tbody").empty();
					var str="";
					for(var i=0;i<data.list.length;i++){
						str += "<tr>"
						str+="<td><input type='checkbox' name='employee'/></td>";
						str+="<td>"+data.list[i].emp_id+"</td>";
						str+="<td>"+data.list[i].emp_user+"</td>";
						str+="<td>"+data.list[i].emp_name+"</td>";
						str+="<td>"+data.list[i].emp_phone+"</td>";
						str+="<td>"+data.list[i].emp_leave_date+"</td>";
						
						if(data.list[i].emp_hire_date==1){
							str+="<td>在职</td>";
						}else{
							str+="<td>离职</td>";
						}
						str+="<td><button class='btn btn-danger btn-xs' onclick='motifyUser("+data.list[i].emp_id+")'>修改</button><button class='btn btn-danger btn-xs' onclick='deleteUser("+data.list[i].emp_id+")'>删除</button></td>";
						str+="</tr>";
					}
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
				url:"emp_selectEmp1.action",
				type:"post",
				data:{"emp_id":$("#basic-url1").val(),"emp_hire_date":$("#basic-url2").val(),"emp_user":$("#basic-url3").val(),"emp_status_id":$("#basic-url4").val(),"currentPage":--pageNo},
				dataType:"JSON",
				success:function(data){
					$("#tbody").empty();
					var str="";
					for(var i=0;i<data.list.length;i++){
						str += "<tr>"
						str+="<td><input type='checkbox' name='employee'/></td>";
						str+="<td>"+data.list[i].emp_id+"</td>";
						str+="<td>"+data.list[i].emp_user+"</td>";
						str+="<td>"+data.list[i].emp_name+"</td>";
						str+="<td>"+data.list[i].emp_phone+"</td>";
						str+="<td>"+data.list[i].emp_leave_date+"</td>";
						
						if(data.list[i].emp_hire_date==1){
							str+="<td>在职</td>";
						}else{
							str+="<td>离职</td>";
						}
						str+="<td><button class='btn btn-danger btn-xs' onclick='motifyUser("+data.list[i].emp_id+")'>修改</button><button class='btn btn-danger btn-xs' onclick='deleteUser("+data.list[i].emp_id+")'>删除</button></td>";
						str+="</tr>";
					}
					$("#tbody").html(str);
					$("#up_down").html("第"+data.currentPage+"页/共"+data.allPage+"页");
				}
			});
		});
	} 
	
	
	
	
	
</script>
</head>

<body>
	<h3>用户管理</h3>

	<div class="col-xs-5">
		<label for="basic-url">按用户ID搜</label>
		<div class="input-group">
			<span class="input-group-addon" id="basic-addon1">用户ID</span> <input
				name="emp_id" type="text" class="form-control" id="basic-url1"
				aria-describedby="basic-addon3">
		</div>
	</div>
	<div class="col-xs-5">
		<label for="basic-url">按入职日期搜</label>
		<div class="input-group">
			<span class="input-group-addon add-on" id="basic-addon2">入职日期<i
				class="icon-th"></i> </span> <input name="emp_hire_date" type="text"
				class="form-control date form_datetime" id="basic-url2"
				aria-describedby="basic-addon1">
		</div>
	</div>
	<div class="col-xs-5">
		<label for="basic-url">按用户名搜</label>
		<div class="input-group">
			<span class="input-group-addon" id="basic-addon3">用户名</span> <input
				name="emp_user" type="text" class="form-control" id="basic-url3"
				aria-describedby="basic-addon3">
		</div>
	</div>
	<div class="col-xs-5">
		<label for="basic-url">按状态搜</label>
		<div class="input-group">
			<span class="input-group-addon" id="basic-addon4">状态</span> <input
				name="emp_status_id" type="text" class="form-control"
				id="basic-url4" aria-describedby="basic-addon3">
		</div>
	</div>
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<div class="col-xs-10"></div>
		<button type="submit" class="btn btn-primary btn" id="selectBtn">搜索</button>
		<button type="button" class="btn btn-primary btn" data-toggle="modal"
			data-target="#myModal">添加用户</button>
		<!-- 模态窗 -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<form action="emp_addEmp.action" method="post">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">添加用户</h4>
							${msg}
						</div>
						
						<div class="modal-body">
							<div class="row">
								<div class="col-md-1"></div>
								<div class="col-md-9">
									<table class="table">
										<tr>
											<td>用户名</td>
											<td><input type="text" name="em.emp_user" />
											</td>
										</tr>
										<tr>
											<td>密码</td>
											<td><input type="password" name="em.emp_pwd" />
											</td>
										</tr>
										<tr>
											<td>真实姓名</td>
											<td><input type="text" name="em.emp_name" />
											</td>
										</tr>
										<tr>
											<td>身份证号</td>
											<td><input type="text" name="em.emp_id_num" />
											</td>
										</tr>
										<tr>
											<td>联系电话</td>
											<td><input type="text" name="em.emp_phone" />
											</td>
										</tr>
										<tr>
											<td>受雇日期</td>
											<td><input type="text" name="em.emp_hire_date" />
											</td>
										</tr>
										<tr>
											<td>家庭住址</td>
											<td><input type="text" name="em.emp_add" />
											</td>
										</tr>
									</table>


								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">取消</button>
							<button type="submit" class="btn btn-primary">保存</button>
						</div>
					</form>
				</div>
			</div>
		</div>

		<!--modal-->

	</div>
	<div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
		<!--表格部分-->
		<table class="table table-striped">
			<thead>
				<td></td>
				<td>用户ID</td>
				<td>用户名</td>
				<td>真实姓名</td>
				<td>电话</td>
				<td>入职时间</td>
				<td>状态</td>
				<td>操作</td>
			</thead>
			<tbody id="tbody">
				<c:forEach items="${eb.list}" var="employee">
					<tr>
						<td><input type="checkbox" name="employee" />
						</td>
						<td>${employee.emp_id}</td>
						<td>${employee.emp_user}</td>
						<td>${employee.emp_name}</td>
						<td>${employee.emp_phone}</td>
						<td>${employee.emp_hire_date}</td>
						<td id="state1">${employee.emp_status_id}</td>
					
						<td>
							<button class="btn btn-danger btn-xs"
								onclick="deleteUser(${employee.emp_id})">修改</button>
							<button class="btn btn-danger btn-xs"
								onclick="motifyUser(${employee.emp_id})">删除</button></td>
					</tr>
				</c:forEach>

				<tbody>
			
		</table>
			<a id="down">上一页</a><span id="up_down">第${eb.currentPage}页/共${eb.allPage}页</span><a
			id='up'>下一页</a>

		</div>

		<script type="text/javascript"
		src="${pageContext.request.contextPath}/admin/jquery/jquery-2.1.3.min.js">
</script>
				<script type="text/javascript"
					src="${pageContext.request.contextPath}/admin/jquery/bootstrap.min.js"></script>
		<script type="text/javascript"
					src="${pageContext.request.contextPath}/admin/js/bootstrap-datetimepicker.js"
					charset="UTF-8"></script>
		<script type="text/javascript"
					src="${pageContext.request.contextPath}/admin/js/bootstrap-datetimepicker.fr.js"
					charset="UTF-8"></script>
		<script type="text/javascript"
					src="${pageContext.request.contextPath}/admin/js/bootstrap-datetimepicker.zh-CN.js"
					charset="UTF-8"></script>
	<script type="text/javascript">
		$(".form_datetime").datetimepicker({
			language: 'zh-CN',
			format: "yyyy-mm-dd hh:ii",
			autoclose: true,
			todayBtn: true,
			startDate: "2013-02-14 10:00",
			minuteStep: 10
		})
		
	</script>       

			</body>
</html>
