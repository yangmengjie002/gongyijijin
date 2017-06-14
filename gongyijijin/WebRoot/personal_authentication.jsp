<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'authentication.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<link rel="stylesheet" href="bootjquery/bootstrap.min.css" type="text/css"></link>
	
	<style type="text/css">
		body{
				width:100%;
				height:100%;
		}	
		.a{
				width:600px;
				height:600px;
				margin:auto;
		}
		input{
			
			height:30px;
	}
	
	
	</style>
	
	
  </head>
  
  <body>
  <jsp:include page="head.jsp"></jsp:include>
  <form name="checkForm" action="" onsubmit="return checkAll()">
  <div class="a">
   <div class="a1">
		<h2>用户身份认证登录</h2>
		<span>（以下所有信息均为必填项）</span>
	</div>
	<hr/>
	<div class="" id="">
	<div class="">
		
		<div class="">
			<fieldset>
			
			<div class="">
				<p><strong>认证类型：</strong><em>个人认证</em></p>
				<p class=""><strong>真实姓名：<input type="text" name="name" id="ww" onblur="checkName()"></strong></p>
				<p class="">
					<strong>性　别：</strong>
					<input type="radio" name="sex"  value="1" />男
					<input type="radio" name="sex"  value="0" />女
				</p>
				<p class=""><strong>身份证:<input type="text" name="sfz" id="sf" onblur="idCord()"></strong></p>
				<p class=""><strong>手机号:<input type="text" name="sjh" id="sj" onblur="phoneCheck()"></strong></p>
			</div>
			</fieldset>
			
			<div class="operate">
				<p class="hint" id="tips" style="display:none"></p>
				<p class="operate_text">进入审核后，我们的工作人员将会对您进行认证，请您确保您填写的信息正确。</p>
				<input type="submit" id="saveBtn" onclick="submitPic()" value="提交认证&gt;&gt;" />
			</div>
		</div>
	</div>
</div>
</div>	
</form>
	<script type="text/javascript" src="bootjquery/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="bootjquery/bootstrap.min.js"></script>
    
	<script type="text/javascript">
		 function  checkAll(){
        	if(checkNull()&&checkName())
        	{
        		return true;
        	}else
        	{
        		return false;
        	}
        }
        	function checkName(){
        	var name=document.getElementById(ww).values;
        	var qqq=/^([\u4E00-\u9FA5]+|[a-zA-Z]+)$/;
        	if(!qqq.test(ww)){
        		alert("真实姓名可以是汉字，也可以是字母，但是不能两者都有，也不能包含任何符号和数字");
        		return false;
        	}else
        	{
        		return true;
        	}
        
        }
        
        
        function phoneCheck() {
        	var sjh=document.getElementById(sj).values;
			var reg=/(^[0-9]{3,4}\-[0-9]{3,8}$)|(^[0-9]{3,8}$)|(^\([0-9]{3,4}\)[0-9]{3,8}$)|(^0{0,1}13[0-9]{9}$)/;
			if(!reg.test(sj)){
				alert("手机号输入错误");
				return false;
				//alert(reg.test(str));
			}else{
				return true;
			}
		}
        function checkNull(){
            var ret=true;
         	var inputs=document.getElementsByTagName("input");
         	for(var i=0;i<(inputs.length-2);i++){
         		if(inputs[i].value==""){
         			ret=false;
         			alert("所有输入框不能为空！");
         			break;
         		
         		}
         	
         	}
         	return ret;
         }
         
	</script>
	<jsp:include page="bottom.jsp"></jsp:include>
  </body>
</html>
