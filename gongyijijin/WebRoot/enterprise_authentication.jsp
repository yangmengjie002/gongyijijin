<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'authentication1.jsp' starting page</title>
    
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
		#a1{
				width:800px;
				height:800px;
				margin:auto;
			
		}
	input{
			
			height:30px;
	}
	textarea{
			height:60px;
	}
	</style>
  </head>
  
  <body>
  <jsp:include page="head.jsp"></jsp:include>
  <form name="checkForm" action="" onsubmit="return checkAll()">
    <div id="a1" class="a2">
		<div class="a3">
    	<div class="a4">
        	<strong>&nbsp;</strong>
            <h2 title="企业身份认证登录">企业身份认证登录</h2>
            <span>（以下所有信息均为必填项）</span>
        </div>
        <hr/>
         <div class=" ">
            <form action="" method="post" id="" onsubmit="return false">
            <table border="0" cellpadding="0" cellspacing="0" class="tbList">
            	<tr>
                    <th>认证类型：</th>
                    <td><em class="">企业帐户</em></td>
                </tr>
                
			   <tr>
                	<th>企业名称：</th>
                    <td>
                    	<input name='username' type="text" id='name' class="inputTxt" value="" maxlength="12" onblur="checkName()" />&nbsp;
                    	<span> 真实有效的企业名称，可以为您提高审核效率</span>
                        <input name="gType" type="hidden" id="gType" value="1"/><span class="error"></span>
                    </td>
                </tr>
                
               
               
            	<tr>
                	<th>认证说明：</th>
                    <td>
                    	<textarea name='contentbuf' id='contentbuf' class="inputArea" style="color:#999;"></textarea>&nbsp;
                    	<span>100字以内</span>
                    	<span class="error"></span>
                    </td>
                </tr>
                
                <tr>
        			<th>有效邮箱：</th>
        			<td><input id="email" name="email" type="text" class="inputTxt en" value=""> <span class="error"></span></td>
        		</tr>
        		
            	<tr>
                	<th>联系手机：</th>
                    <td>
                    	<input name="mobile" type="text" id="mobile" class="inputTxt" value="" maxlength="11" />
                    	&nbsp;<span class="error"></span>
                    </td>
                </tr>
                
            	
                
                <tr class="">
                	<th>&nbsp;</th>
                    <td>
                    	
		                <div class="">
							<p class="" id="" style="display:none"></p>
							<p class="">进入审核后，我们的工作人员将会对您进行认证，请您确保您填写的信息正确。</p>
						<input type="submit" id="saveBtn" onclick="submitPic()" value="提交认证&gt;&gt;" />
						</div>
                    	
                    </td>
                </tr>
                
            </table>
            </form>
          </div>
	</div>
</div>
<form>
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
        /* function checkName(){
        	var username=document.all.username.value;
        	var length=loginname.length;
        	if(length<2||length>10){
        		alert("用户名必须在2到10之间");
        		return false;
        	}else
        	{
        		return true;
        	}
        } */
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
