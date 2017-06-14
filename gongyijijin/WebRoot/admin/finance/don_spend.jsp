 <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>My JSP 'back_don.jsp' starting page</title>
	<link href="../css/bootstrap.min.css" rel="stylesheet" media="screen">
	<link href="../css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
  </head>
 <!--  -->
  <body>
  <h3>支出做账</h3>
    <div class="col-xs-5">
		<label for="basic-url">按申请人搜</label>
		<div class="input-group">
		  <span class="input-group-addon" id="basic-addon3">申请人名</span>
		  <input type="text" class="form-control" id="basic-url" aria-describedby="basic-addon3">
		</div>
	</div>
	
	<div class="col-xs-5">
		<label for="basic-url">按申请日期搜</label>
		<div class="input-group">
		  <span class="input-group-addon add-on" id="basic-addon1">开始日期<i class="icon-th"></i></span>
		  <input type="text" class="form-control date form_datetime" aria-describedby="basic-addon1">
		  <span class="input-group-addon add-on" id="basic-addon1">结束日期<i class="icon-th"></i></span>
		  <input type="text" class="form-control date form_datetime" aria-describedby="basic-addon1">
		</div>
	</div>
	
	<div class="col-xs-5">
		<label for="basic-url">按申请金额搜</label>
		<div class="input-group">
		  <span class="input-group-addon" id="basic-addon3">最低</span>
		  <input type="text" class="form-control" id="basic-url" aria-describedby="basic-addon3">
		    <span class="input-group-addon" id="basic-addon3">最高</span>
		  <input type="text" class="form-control" id="basic-url" aria-describedby="basic-addon3">
		</div>
	</div>
	
	<div class="col-xs-5">
		<label for="basic-url">按项目名称搜</label>
		<div class="input-group">
		  <span class="input-group-addon" id="basic-addon3">项目名称</span>
		  <input type="text" class="form-control" id="basic-url" aria-describedby="basic-addon3">
		</div>
	</div>
	
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<div class="col-xs-9">	
		</div>
		<button type="button" class="btn btn-primary btn">
			搜索
		</button>
		<button type="button" class="btn btn-primary btn">
			已做账
		</button>
		<button type="button" class="btn btn-primary btn" data-toggle="modal" data-target="#myModal">
			未做账
		</button>
    </div>
    
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    	<table class="table">
    		<tr>
    			<td>
					<input id="all" type="checkbox" value="全选"/>全选<br/>
    			</td>
    			<td>出账编号</td>
    			<td>出账项目（项目名称）项目编号</td>    			
    			<td>出账项目现有资金（￥）</td>
    			<td>目标资金（￥）</td>
    			<td>同意资金数额（￥）</td>
    			<td>经手人</td>
    			<td>是否确认出账</td>
    		</tr>
    		<tr>
    			<td>
    				<input class="ck" type="checkbox" value="编号"/>
    			</td>
    			<td>170614-（部门编号）-（员工编号）-（表单序号）
    				170614-1-123-0001	
    			</td>
    			<td> 老司机自残（170614-3-131-0232）</td>
    			<td>2000</td>
    			<td>60000</td>
    			<td>60000</td>
    			<td>小周</td>
    			<td>
    				<!-- Button trigger modal -->
							<button type="button" class="btn btn-success"
								data-toggle="modal" data-target="#myModal1-2">同意</button> <!-- Modal -->
							<div class="modal fade" id="myModal1-2" tabindex="-1" role="dialog"
								aria-labelledby="myModalLabel">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title" id="myModalLabel">请输入同意理由(此理由将会提交到用户)</h4>
										</div>
										<div class="modal-body"><textarea cols="68" rows="20"></textarea></div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">关闭</button>
											<button type="button" class="btn btn-primary">确认
												</button>
										</div>
									</div>
								</div>
							</div>
    			</td>
    		</tr>
    		
    	</table>
    </div>
    
    <script type="text/javascript" src="../js/jquery-2.1.3.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
	<script type="text/javascript" src="../js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
	<script type="text/javascript" src="../js/locales/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
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
	<script>
$("#all").click(
	function(){
		$(".ck").each(
			function()
			{
				$(this).prop("checked",$("#all").prop("checked"));
			}
		)
	}
)
function changeState(obj,flag)
{
	obj.prop("checked",flag);
}
</script>     
  </body>
</html>