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



</head>

<body>
	<jsp:include page="head.jsp"></jsp:include>
	<form action="MoneyApply_save.action" method="post"
		enctype="multipart/form-data">
		<div class="col-lg-2 col-md-2 col-sm-2 col-xs-2"></div>
		<div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
			<table class="table">
				<tr>
					<td>项目名称</td>
					<td>
						<%-- <s:select list="lis"  listValue="pro_name" name="pro_name"></s:select> --%>
						<select id="proname" name="pro_name" style="width:380; height:30">
					</select></td>
				</tr>
				<tr>
					<td>申请金额</td>
					<td><input type="text" name="pro_money" size="50"  id="pro_money"/>
					</td><span id="password_div"></span>
				</tr>
				<tr>
					<td>申请目的</td>
					<td><input type="text" name="pro_appl_reason" size="50" id="pro_reason" />
					</td>
				</tr>
				<tr>
					<td>附属文件上传</td>
					<td><input type="file" name="filename" size="50" />
					</td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="提交" /></td>
				</tr>
			</table>

		</div>
	</form>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
		$(function(){
		$.ajax({
			url:"MoneyApply_addPro.action",
			type:"post",
			dataType:"html",
			success:function(data){	
				var arr = data.split(";");
				var str = "";
				for(var i=0;i<arr.length;i++){
					str += "<option>"+arr[i]+"</option>";
				}
				$("#proname").html(str);
			}		
		});
	})
	
		$("#pro_money").keypress(function(event) {  
            var keyCode = event.which;  
            if (keyCode == 46 || (keyCode >= 48 && keyCode <=57) || keyCode == 8)//8是删除键  
                return true;  
            else  
                return false;  
        }).focus(function() {  
            this.style.imeMode='disabled';  
        });  
     
	
		$("#pro_appl_reason").focuse(function(){
			var mima=$("pro_appl_reason").val();
		})
	 $("#pro_money").focus(function(){
			var mima=$("#pro_money").val();
			if(mima.length==0){
				$("#password_div").css("color","gray");
				$("#password_div").html("只能输入数字，6-20个字符");
			}
		});
		$("#pro_money").blur(function(){
			var mima=$("#pro_money").val();
			var reg=new RegExp('^[0-9]{1,20}$','gi');
			if(reg.test(mima)){
				$("#password_div").html("");
			}else if(mima.length!=0 && !reg.test(mima)){
				$("#password_div").html("只能输入数字类型");
				$("#password_div").css("color","red");
			}else if(mima.length==0){
				$("#password_div").html("");
			}
		}) 
	
	</script>
	<script>


	
</script>
</body>
</html>
