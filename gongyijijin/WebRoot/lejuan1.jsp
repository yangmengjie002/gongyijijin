
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="Content-Language" content="zh-cn" />
<meta name="robots" content="all" />
<meta name="Copyright" content="Tencent" />
<meta name="Keywords" content="公益,腾讯,QQ,Tencent" />
<title>公益基金</title>
<link rel="stylesheet" type="text/css" href="http://gongyi.qq.com/css/common/common.v3.1.css?v2.18"/>
<link rel="stylesheet" type="text/css" href="http://gongyi.qq.com/css/succor/proinfos.css?v2.18"/>
<link rel="stylesheet" type="text/css" href="http://gongyi.qq.com/css/succor/proinfos.list.v2.css?v2.18"/>
<link rel="stylesheet" type="text/css" href="http://gongyi.qq.com/css/pack/gylib.unpack.v1.2.css?v2.18"/>
<script type="text/javascript" src="http://gongyi.qq.com/js/static/lib/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
if(/AppleWebKit.*Mobile/i.test(navigator.userAgent) || (/MIDP|SymbianOS|NOKIA|SAMSUNG|LG|NEC|TCL|Alcatel|BIRD|DBTEL|Dopod|PHILIPS|HAIER|LENOVO|MOT-|Nokia|SonyEricsson|SIE-|Amoi|ZTE/.test(navigator.userAgent))){
	if(window.location.href.indexOf("?mobile")<0){
		try{
			if(/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)){
				var ua=navigator.userAgent, wxv=parseInt(ua.substring(ua.indexOf("MicroMessenger/")+15));
				var _qStr = function(hashKey){	//获取hash值
					var hash_arr = decodeURIComponent(location.hash.substr(1)).split("&");
					var hash_obj = {};
					for(var i=0;i<hash_arr.length;i++){
						var _key = hash_arr[i].substr(0,hash_arr[i].indexOf("="));
						var _val=hash_arr[i].substr(hash_arr[i].indexOf("=")+1);
						hash_obj[_key]=_val;
					}
					return hash_obj[hashKey];
				}

				var _sKeyWord = _qStr('s_key'),_etQuery = "";
				if(wxv >= 5){ //weixin
					if(decodeURIComponent(_sKeyWord) == "自闭症"){
						window.location.href= "https://ssl.gongyi.qq.com/m/weixin/detail.htm?showwxpaytitle=1#p%3Ddetail%26id%3D2321";
					}else if(!!_sKeyWord && _sKeyWord != "") {
						_etQuery = 'seatxt='+encodeURIComponent(decodeURIComponent(_sKeyWord));
						window.location.href = 'http://ssl.gongyi.qq.com/m/weixin/index2_gzzh.htm?'+_etQuery+'#p=search';
					}
				}
			}
		}catch(e){}
	}
}

</script>

<script language="javascript" src="http://gongyi.qq.com/js/pack/jquery.gylib.unpack.v1.2.js?v2.18"></script>
<script language="javascript" src="http://gongyi.qq.com/js/loveplan/2012pageheard.kid.js?v2.18"></script>
<script type="text/javascript" src="http://gongyi.qq.com/js/succor/cate/succor.p.cate.js?v2.18"></script>
<script type="text/javascript" src="http://gongyi.qq.com/js/static/lib/jq.gy.util.js"></script>
	<script type="text/javascript" src="http://gongyi.qq.com/js/static/lib/jq.gy.user.js"></script>
</head>
<body>
<div class="header">
	<div class="logout"> 
    	<div class="logout_t">
        	<div id="Global_pageheardObj" class="topLoginWrap">您好，请<a href="javascript:ptloginopenfun();void(0);" class="mytuichu">登录</a></div>
        </div>       	
    </div>
    <div class="h_nav">  
    	<div class="nav_t">
        	<div class="logo"><a href="http://gongyi.qq.com"></a></div>
        	<ul class="top_navigate">
            	<li><a href="http://gongyi.qq.com">首页</a></li>
            	<li><a href="http://gongyi.qq.com/loveplan">月捐</a></li>
                <li><a href="http://gongyi.qq.com/succor/index.htm">乐捐</a></li>
                <li class="drop" style="position:relative;z-index:20">
                	<a id="weiai-nav" href="http://gongyi.qq.com/npo">微爱</a>
                    <div>
                        <a href="http://gongyi.qq.com/npo">微爱首页</a>
						<a href="http://gongyi.qq.com/npo/org.htm">微爱组织</a>
                        <a href="http://gongyi.qq.com/npo/school.htm">微爱高校</a>
						<a href="http://gongyi.qq.com/npo/PNorganize_list.htm">公益组织</a>
                    </div>
                </li>
                <li><a href="http://gongyi.qq.com/npo/PNEvent_list.htm">公益活动</a></li>
                <li style="padding-left:148px;"><a href="http://gongyi.qq.com/nanjizhan.htm">爱心回馈</a></li>
                <li><a href="http://gongyi.qq.com/loveplan/chengzhangtixi.htm">成长体系</a></li>
            </ul>
        </div>    	
    </div>
    
</div>

<!--[if !IE]>|xGv00|d4b61f1e3905f188f70789749222d2d5<![endif]-->

<div class="main_na">
	<div class="bank1"></div>	
</div>


<div class="pro_top" id="pro_top">
	<div class="mbxie"><p><a href="http://gongyi.qq.com/succor/index.htm">乐捐首页</a> &gt; <a href="http://gongyi.qq.com/succor/project_list.htm">项目列表</a></p></div>
</div>
<div class="search-pub-wrap" id="search-pub-wrap" style="display:none;"></div>
	<!-- pro_title s-->
    <div class="pro_title" id="search_wrap">
   
    	<div class="pro_se" id="projectSearch_wrap">
	         
        </div>
    </div>
	<!-- pro_title e-->
    
<div class="searchResultSummary" id="searchResultSummary" style="display:none;"></div>
  
<!-- pro main s-->  
<div class="pro_main">  
   <ul class="pro_ul" id="projectList_wrap">
   </ul>
   <!-- pro pages s-->
   <div class="common_pages" id="projectPages_wrap"></div>
   <!-- pro pages e-->
   
</div> <!-- pro main e-->

<div style="clear:both"></div>

<div class="footer" style="height:auto;">
	<div class="contact_us clearfix">
		<div class="contact_inner">
			<div class="inner">
				<h3>联系我们</h3>
				<span class="proj">项目合作: gongyi_HZ@tencent.com</span>
				<span class="proj">媒体合作:gongyi_HZ@tencent.com</span>
				<a href="http://support.qq.com/discuss/358_1.shtml" target="_blank" class="regard">意见反馈</a> |
				<a href="http://service.qq.com/" target="_blank" class="regard">网友投诉</a>
			</div>
		</div>
	</div>
	<ul class="clearfix">
		<li><a href="http://gongyi.qq.com/jjhgy/index.htm" target="_blank">腾讯公益慈善基金会</a><span class="line">|</span></li>
		<li><a href="http://www.tencent.com/" target="_blank">关于腾讯</a><span class="line">|</span></li>
		<li><a href="http://www.tencent.com/index_e.shtml" target="_blank">About Tencent</a><span class="line">|</span></li>
		<li><a href="http://www.qq.com/contract.shtml" target="_blank">服务条款</a><span class="line">|</span></li>
		<li><a href="http://adver.qq.com/" target="_blank">广告服务</a><span class="line">|</span></li>
		<li><a href="http://hr.tencent.com/" target="_blank">腾讯招聘</a><span class="line">|</span></li>
		<li><a href="http://service.qq.com/" target="_blank">客服中心</a><span class="line">|</span></li>
		<li><a href="http://www.qq.com/map/" target="_blank">网站导航</a></li>
	</ul>
	<div class="copyright">
		Copyright &copy; 1998 - 2017 Tencent. All Rights Reserved 
		腾讯公司 版权所有
	</div>
</div>	
<script language="javascript" src="http://pingjs.qq.com/ping.js"></script>
<script language="javascript">if(typeof(pgvMain) == 'function')pgvMain();</script><!--[if !IE]>|xGv00|20c2e25311e43849121f93e50f0a95cc<![endif]-->
<!--项目列表-->
<script type="text/html" id="tpl_project_list">
<ul class="pro_ul" id="projectList">
<%var _len = list.length;
for(var i=0;i<_len;i++){
var _vo = list[i];%>
<li class="pro_li"<%if(_vo.hide_donate == 1){%> style="display:none;"<%}%>>
	<div class="pro_li_img"><a href="detail.htm?id=<%=_vo.id%>" target="_blank"><img src="<%if(_vo.focusImg.syn_type==3){%><%=_vo.focusImg.syn_url%><%}else{%><%=_vo.focusImg.syn_url+"/200"%><%}%>" height="120" border="0"></a></div>
	<div class="pro_li_cen">
		<div class="pro_sp1 font_bl"><a href="detail.htm?id=<%=_vo.id%>" target="_blank" class="titless"><%=_vo.s_title%></a><div class="clearFix"></div></div>
		<div class="pro_cen_p">
			<div class="pro_list_cen_left"><p class="pro_sp2">项目简介 | </p></div>
			<div class="pro_cen_right">
				<p class="pro_sp4"><%=_vo.summary%></p>
			</div>
			<div class="clearFix"></div>
		</div>
		<%if(_vo.donate.needMoney>0){%><p><span class="pro_sp2">筹款目标 |</span><b class="money-s"><%=_vo.donate.needMoney/100%></b>元</p><%}%><p><span class="pro_sp2">筹款时间 |</span><span class="time-s"><%=_vo.startTime%></span><%if(_vo.endTime!=""){%> 至 <span class="time-s"><%=_vo.endTime%></span><%}%></p>
		<p>
			<span class="pro_sp2 sp_block">执 行 方 | </span> <span class="pro_sp4 sp_block"><%=_vo.eOrgName||(_vo.fundName||(_vo.pName||""))%></span>
		</p>
		<div class="clearFix"></div>
	</div>
	<div class="pro_li_jin pro_list_stat">
		<p class="pro_jindu_2">项目状态:<%if(_vo.status==1){%>募款中<%}else if(_vo.status==2){%>执行中<%}else if(_vo.status==3){%>已结束<%}%></p>
		<p class="pro-donate-stat">已筹：<span><%=_vo.donate.obtainMoney||0%></span>元&nbsp;&nbsp;<span><%=_vo.donate.donateNum||0%></span>人捐款</p>
		<%if(_vo.donate.needMoney > 0){
			var _par = parseInt((_vo.donate.obtainMoney/(_vo.donate.needMoney/100))*100);%>
		<div class="pro_tiao_2">
			<div class="jindu_xm_2">
				<p class="jindu_xm_p_2"><span style="width:<%=_par%>%" class="istrue"></span></p>
			</div>
			<div class="pro_dis_2"><%=_par%>%</div>
		</div>
		<%}%>
		<%if(_vo.status == 1 && _vo.hide_donate != 1){%>
		<div class="wol_bto">
			<a class="wol_btoa" href="javascript:void(0);" pName="<%=_vo.title%>" pid="<%=_vo.id%>" fid="<%=_vo.fundID%>" onclick="toDonate(this);">我要捐款</a>
		</div>
		<%}%>
	</div>
	<div class="clearFix"></div>
</li>
<%}%>
</ul>
</script> 

<!--分页-->
<script type="text/html" id="tpl_page_list">
<%
var cur_p = pages.page;
var total_pages = pages.total_page;
var prepage =  parseInt(parseInt(cur_p)-1);
var nextpage = parseInt(parseInt(cur_p)+1);
var _start = parseInt(parseInt(cur_p)-2);
var _end = (cur_p<3)?5:parseInt(parseInt(cur_p)+2);
if(_end>total_pages)
{
	_end=total_pages;
	_start = _end-4;
}
if(_start<=0) _start=1;
%>	
	<span class="totalRows"><%=pages.total%></span>条记录 <%=cur_p%>/<%=total_pages%>页 

<%if(cur_p>1){%><a href="javascript:listObj.list.go(<%=prepage%>);">上一页</a><%}%>
<%for(var i=_start; i<=_end; i++){%>
<a href="javascript:listObj.list.go(<%=i%>);"<%if(i == cur_p){%> class="current"<%}%>><%=i%></a>
<%}%>
<%if(cur_p < total_pages){%><a href="javascript:listObj.list.go(<%=nextpage%>);">下一页</a><%}%>
</script>

<!--搜索结果-->
<script type="text/html" id="tpl_search_list">
<form action="" method="get" id="dropFilter">
 	<input type="hidden" value="<%=search.s_status||""%>" id="s_status" name="s_status" />
 	<input type="hidden" value="<%=search.s_tid||""%>" id="s_tid" name="s_tid" />
 	<input type="hidden" value="<%=search.s_sort||""%>" id="s_sort" name="s_sort" />
 	<input type="hidden" value="<%=search.s_puin||""%>" id="s_puin" name="s_puin" />
 	<input type="hidden" value="<%=search.s_fid||""%>" id="s_fid" name="s_fid" />
</form>	
<div class="select-wrap-search">
	<span class="s-text">项目状态：</span><span class="drop-span"><span class="d-title2" id="s_status_text">募款中</span>
	<ul class="drop-ul" id="s_status_list">
	    	<li><a val="1" p="s_status"<%if(search.s_status==1){%> selected="selected"<%}%>>募款中</a></li>
			<li><a val="2" p="s_status"<%if(search.s_status==2){%> selected="selected"<%}%>>执行中</a></li>
			<li><a val="3" p="s_status"<%if(search.s_status==3){%> selected="selected"<%}%>>已结束</a></li>
			<li><a val="0" p="s_status"<%if(search.s_status==0){%> selected="selected"<%}%>>全部</a></li>
	    </ul>
	</span>
	
	<span class="s-text">项目领域：</span><span class="drop-span" style="width:120px;"><span class="d-title2" id="s_tid_text">全部分类</span>
	    <ul class="drop-ul" id="s_tid_list">
	    	<li><a val="0" p="s_tid"<%if(search.s_tid==0 || search.s_tid==""){%> selected="selected"<%}%>>全部分类</a></li>
			<%var _len=succor_cate.length;
			for(var i=0;i<_len;i++){
			var _cate = succor_cate[i];%>
			<li><a val="<%=_cate.classvalue%>" p="s_tid"<%if(search.s_tid==_cate.classvalue){%> selected="selected"<%}%>><%=_cate.classname%></a></li>
			<%}%>
	    </ul>
	</span>
	
	<span class="s-text">排序：</span><span class="drop-span" style="width:120px;"><span class="d-title2" id="s_sort_text">默认排序</span>
	    <ul class="drop-ul" id="s_sort_list">
	    	<li><a val="1" p="s_sort"<%if(search.s_sort==1){%> selected="selected"<%}%>>默认排序</a></li>
			<li><a val="5" p="s_sort"<%if(search.s_sort==5){%> selected="selected"<%}%>>剩余金额最少</a></li>
			<li><a val="6" p="s_sort"<%if(search.s_sort==6){%> selected="selected"<%}%>>剩余时间最短</a></li>
		 	<!--<li><a val="2" p="s_sort"<%if(search.s_sort==2){%> selected="selected"<%}%>>最多人支持</a></li>-->
			<li><a val="3" p="s_sort"<%if(search.s_sort==3){%> selected="selected"<%}%>>最多人帮助</a></li>
	    </ul>
	</span>
	<div class="clearFix"></div>
</div>
<div class="pro_se3" style="width:260px;">
	<input type="text" class="pro_search" name="key_words" id="key_words" style="width:180px;" maxlength="40" value="<%=search.s_key||""%>" />
    <input type="button" class="subm_btn" id="key_btn" value="" />
</div>
<div class="clearFix"></div>


</script>

<script type="text/html" id="tpl_ret_key">	
<p>共搜索到 <span class="resNum" id="resNum"><%=page.total%></span> 条“<span class="resKeyWords" id="resKeyWords"><%=search.s_key%></span>”相关的项目</p>
<a href="javascript:listObj.load(1);" class="closett">关闭</a>
</script>

<script type="text/html" id="tpl_ret_pub">	
<%=search.pubName%>发布的乐捐项目(<%=page.total%>个)
</script><!--[if !IE]>|xGv00|310d4d8e4fd165e9751bc3550e6cd338<![endif]-->
</body>
<script type="text/javascript" src="http://gongyi.qq.com/js/loveplan/2012pageheard.kid.js"></script>
<script src="http://gongyi.qq.com/js/succor/gongyi.succor.list.v3.js?v3.19"></script>
<script>
	changeNavTab(2);
	//用户态初始化
	$.gyUser.init();
	listObj.init();
</script>
<!--[if IE 6]>
	<script src="http://gongyi.qq.com/js/pack/DD_belatedPNG_0.0.8a-min.js" type="text/javascript"></script>
	<script type="text/javascript">
		fixedIE6Png();
	</script>
<![endif]--> 
</html><!--[if !IE]>|xGv00|b5f116943691d3a7038a31e30ddd84ec<![endif]-->