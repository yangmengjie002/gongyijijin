<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

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
<script type="text/javascript">
		window.onload = function() {
			$.ajax({
				url : "get_getProvince.action",
				type : "post",
				dateType : "text",
				success : function(data) {
					var str1 = data.split(";");
					var str = "";
					for ( var i = 0; i < str1.length; i++) {
						str += "<option>" + str1[i] + "</option>";
					}
					$("#province").html(str);
				}
			});
			$("#province").change(function() {
				$.ajax({
					url : "get_getCity.action",
					type : "post",
					data : {
						province : $("#province").val()
					},
					dateType : "html",
					success : function(data) {
						var str1 = data.split(";");
						var str = "";
						for ( var i = 0; i < str1.length; i++) {
							str += "<option>" + str1[i] + "</option>";
						}
						$("#city").html(str);
					}
				});			
		   });
		   $("#city").change(function() {
				$.ajax({
					url : "get_getDistr.action",
					type : "post",
					data : {
						city : $("#city").val()
					},
					dateType : "html",
					success : function(data) {
						var str1 = data.split(";");
						var str = "";
						for ( var i = 0; i < str1.length; i++) {
							str += "<option>" + str1[i] + "</option>";
						}
						$("#district").html(str);
					}
				});			
		   });
		   
	}
</script>
</head>

<body>
	<select id="province"><option>选择省</option>
	</select>
	<select id="city"><option>选择市</option>
	</select>
	<select id="district"><option>选择县</option>
	</select>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery-2.1.3.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
