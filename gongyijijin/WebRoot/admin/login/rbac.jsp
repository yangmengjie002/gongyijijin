<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
	
	<script type="text/javascript">
		window.onload = function(){
			$("#status").val(${ey.emp_status_id});
			$("#role").val(${roleList.id});
		}
	</script>
</head>


<body>
	<h4>用户状态及权限</h4>
	<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2"></div>
	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
	<form action="role_motifyRole1.action">
		<table class="table table-striped" border="2">
			<tr>
				<td>用户ID</td>
				<td>
					<select name="me">
						<option value="${ey.emp_id}">${ey.emp_id}</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>用户名</td>
				<td>${ey.emp_user}</td>
			</tr>
			<tr>
				<td>状态</td>
				<td>
					<c:if test="${ey.emp_status_id==1}">
						在职
					</c:if> 
					<c:if test="${ey.emp_status_id==2 }">
						离职
					</c:if> 
					<select name="statuSelect" id="status">
						<option value="1">在职</option>
						<option value="2">离职</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>用户角色</td>
				<td>
						${roleList.roleName }
					<select name="roleSelect" id="role">
						<c:forEach items="${roList}" var="rolis">
							<option value="${rolis.id}">${rolis.roleName}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
		</table>
		<input type="submit" value="提交" class="btn btn-primary"/>
		<input type="button" value="返回" class="btn btn-primary" onclick="javascript:history.go(-1)">
	</form>	
	
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/admin/jquery/jquery-2.1.3.min.js">
	</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/admin/jquery/bootstrap.min.js"></script>
</body>
</html>
