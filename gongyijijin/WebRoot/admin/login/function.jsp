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
<style type="text/css">
#reid {
	display: none;
}
</style>

<script type="text/javascript">
	function delete1(){
		var ids = document.getElementsByName("fun");
		var str="";
		for(var i=0;i<ids.length;i++){
			if(ids[i].checked){
					str += ids[i].value+";";
			}
		}
		location.href="role_deleteFun.action?str="+str;
	} 
	/* 
	function delete1() {
			obj = document.getElementsByName("fun");
			check_val = [];
			for (k in obj) {
				if (obj[k].checked)
					check_val.push(obj[k].value);
			}
			alert(check_val);
		} */
</script>
</head>

<body>
	<h4>修改${re.roleName}</h4>
	<p>现有的权限为：</p>

	<c:forEach items="${fuList}" var="ful">
		${ful.functionName} &nbsp;&nbsp;
	</c:forEach>
		<form action="role_addFunction.action">
		<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
		</div>
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
			权限修改
			<table class="table">
				<tr>
					<td>权限ID</td>
					<td>权限名</td>
				</tr>
				<c:forEach items="${funList}" var="fun1">
					<tr>
						<td>${fun1.id}</td>
						<td><input type="checkbox" value="${fun1.id}" name="fun">${fun1.functionName}</td>
					</tr>
				</c:forEach>
			</table>
			<input type="text" id="reid" name="funid" value="${re.id}">
			<p>
				<input type="button" value="删除" onclick="delete1()" class="btn btn-primary" /> 
				<input type="submit" value="保存" class="btn btn-primary" /> <input
					class="btn btn-primary" type="button"
					onclick="javascript:history.go(-1)" value="取消" />
			</p>

		</div>
	</form>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/admin/jquery/jquery-2.1.3.min.js">
		
	</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/admin/jquery/bootstrap.min.js"></script>
</body>
</html>
