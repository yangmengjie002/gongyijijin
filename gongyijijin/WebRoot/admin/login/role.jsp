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

<script type="text/javascript">
  		function deleteRole(id){
  			if(confirm("确定要删除角色吗？")){
  				location.href="role_deleteRole.action?roleid="+id;
  			}
  		}
  		
  		
  		function motifyRole(id){
  			location.href="role_motifyRole.action?roleid="+id;
  		}
  		
  		
  	</script>
  	<style type="text/css">
  		#tileInp{
  			display:none;
  		}
  	</style>
</head>

<body>
	<h4>
		角色权限配置 <input onclick="javascript:history.go(-1)" type="button"
			value="返回" class="btn btn-primary" />
	</h4>
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"></div>
	<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
		<input type="button" value="添加角色" class="btn btn-primary" /><br />
		<form action="role_addRole.action">
		角色名：<input type="text" name="roleName">&nbsp;&nbsp;
		<input type="submit" value="添加" class="btn btn-primary" />
		</form>
		<input type="button" value="添加权限" class="btn btn-primary" /><br />
		<form action="role_addFunction.action">
			<table class="table">
				<tr>
					<td>权限名：</td>
					<td><input type="text" name="functionName" />
					</td>
				</tr>
				<tr>
					<td>权限路径：</td>
					<td><input type="text" name="url" />
					</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" class="btn btn-primary" value="添加"/></td>
				</tr>
			</table>
		</form>
	</div>
	<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
		<table class="table table-striped" border="2"
			style="text-align:center;">
			<thead>
				<tr>
					<td>角色ID</td>
					<td>角色名</td>
					<td>角色操作</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${roList}" var="rol">
					<tr>
						<td>${rol.id}</td>
						<td>${rol.roleName}</td>
						<td>
						<input type="button" value="修改"class="btn btn-primary" onclick="motifyRole(${rol.id})" />
						<input type="button" value="删除"class="btn btn-primary" onclick="deleteRole(${rol.id})" />
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/admin/jquery/jquery-2.1.3.min.js">
	</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/admin/jquery/bootstrap.min.js"></script>
</body>
</html>
