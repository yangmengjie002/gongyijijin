<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>菜单</title>
<link href="${pageContext.request.contextPath}/admin/css/left.css" rel="stylesheet" type="text/css">
</head>
<body>
<table width="100" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="12"></td>
  </tr>
</table>
<table width="100%" border="0">
  <tr>
    <td>
<div class="dtree">

	<a href="javascript: d.openAll();">展开所有</a> | <a href="javascript: d.closeAll();">关闭所有</a>
	<link rel="StyleSheet" href="${pageContext.request.contextPath}/admin/css/dtree.css" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/dtree.js"></script>
	<script type="text/javascript">
		<!--
		d = new dTree('d');
		d.add(0,-1,'基金管理');
		//用户管理
		d.add(1,0,'用户管理','/gongyijijin/admin/login/welcome.jsp','','mainFrame');
			d.add(11,1,'增减用户','/gongyijijin/admin/employee/changeEmployee.jsp','','mainFrame');
			d.add(12,1,'修改密码','/gongyijijin/admin/employee/changePassword.jsp','','mainFrame')
		//理事会
		d.add(2,0,'理事会','/gongyijijin/admin/login/welcome.jsp','','mainFrame');
			d.add(21,2,'已审核','/gongyijijin/admin/orders/list.jsp','','mainFrame');
			d.add(22,2,'未审核','/gongyijijin/admin/orders/list.jsp','','mainFrame');
		//审核委员会
		d.add(3,0,'审核委员会','/gongyijijin/admin/login/welcome.jsp','','mainFrame');
			d.add(31,3,'已审核','/gongyijijin/admin/check/check_finance.jsp','','mainFrame');
			d.add(32,3,'未审核','/gongyijijin/admin/check/check_item.jsp','','mainFrame');
		//财务部
		d.add(4,0,'财务部','/gongyijijin/admin/login/welcome.jsp','','mainFrame');
			d.add(41,4,'做账','/gongyijijin/admin/orders/list.jsp','','mainFrame');
			d.add(42,4,'审核','/gongyijijin/admin/orders/list.jsp','','mainFrame');
		//查询。
		d.add(5,0,'查询','/gongyijijin/admin/login/welcome.jsp','','mainFrame');
			d.add(51,5,'项目查询','/gongyijijin/admin/query/finance_query.jsp','','mainFrame');
			d.add(52,5,'财务审核','/gongyijijin/admin/query/item_query.jsp','','mainFrame');
			
		document.write(d);
		//-->
	</script>
</div>	</td>
  </tr>
</table>
</body>
</html>
