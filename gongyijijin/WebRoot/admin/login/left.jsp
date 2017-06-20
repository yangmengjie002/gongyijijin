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
		d.add(1,0,'用户管理','/gongyijijin/admin/employee/changeEmployee.jsp','','mainFrame');
			d.add(11,1,'增减用户','/gongyijijin/emp_selectEmp.action','','mainFrame');
			d.add(12,1,'修改密码','/gongyijijin/admin/employee/changePassword.jsp','','mainFrame')
		//理事会
		d.add(2,0,'理事会','/gongyijijin/admin/council/council.jsp','','mainFrame');
			d.add(21,2,'项目审核','/gongyijijin/admin/council/council_pro.jsp','','mainFrame');
			d.add(22,2,'资金审核','/gongyijijin/admin/council/council_money.jsp','','mainFrame');
		//审核委员会
		d.add(3,0,'审核委员会','/gongyijijin/admin/committee/moneycil.jsp','','mainFrame');
			d.add(31,3,'资金审核','/gongyijijin/admin/committee/moneycil.jsp','','mainFrame');
			d.add(32,3,'项目审核','/gongyijijin/admin/committee/council (2).jsp','','mainFrame');
		//财务部
		d.add(4,0,'财务部','/gongyijijin/admin/finance/donation.jsp','','mainFrame');
			d.add(41,4,'做账','/gongyijijin/admin/finance/donation.jsp','','mainFrame');
				d.add(411,41,'捐款做账','/gongyijijin/admin/finance/donation.jsp','','mainFrame');
				d.add(412,41,'支出做账','/gongyijijin/admin/finance/don_spend.jsp','','mainFrame');
			d.add(42,4,'审核','/gongyijijin/admin/finance/back_don.jsp','','mainFrame');
				d.add(421,42,'捐款审核','/gongyijijin/admin/finance/back_don.jsp','','mainFrame');
				d.add(422,42,'支出审核','/gongyijijin/admin/finance/back_don.jsp','','mainFrame');
		//查询。
		d.add(5,0,'查询','/gongyijijin/admin/query/QueryItem.jsp','','mainFrame');
			d.add(51,5,'项目查询','/gongyijijin/admin/query/QueryItem.jsp','','mainFrame');
		
			
		document.write(d);
		//-->
	</script>
</div>	</td>
  </tr>
</table>
</body>
</html>
