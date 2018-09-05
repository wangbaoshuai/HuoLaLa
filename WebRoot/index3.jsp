<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>有单了</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="css/jquery.selectlist.css">
<style type="text/css">
.clear{clear:both;}

.main-page .left, .main-page .right{float:left;}
.main-page .nav-back{width:60px;height:250px;background:#000;opacity:.3;filter:alpha(opacity=30);}
.main-page .nav{position:relative;margin-top:-250px;width:60px;text-align:center;font-size:14px;font-family:"微软雅黑";color:#fff;}
.main-page .nav div{height:125px;line-height:28px;}
.main-page .nav div.on{background:#0094ea; height:125px;}
.main-page .right{width:620px;height:250px;margin-left:20px;}
.main-page .content-back{width:620px;height:250px;background:#fff;opacity:.3;}
.main-page .content{position:relative;width:600px;height:230px;margin-top:-250px;padding:10px;overflow:hidden;}
.main-page .content div{width:600px;height:230px;margin-bottom:10px;background:#fff;}


</style>
	<script src="js/jquery-1.9.0.min.js" type="text/javascript"></script>
	<script src="js/jquery.KinSlideshow-1.2.1.min.js" type="text/javascript"></script>
	<script type="text/javascript">
	$(function(){
		

		$(".tab li").hover(function(){
			$(this).siblings().removeClass('on');
			$(this).addClass("on");
			var li_index=$(this).index();

			$(this).parent().parent().find('.bd').hide().eq(li_index).show();


		});

		$hi=$('.bd:hidden').show();

		$("#KinSlideshow1").KinSlideshow();
		$("#KinSlideshow2").KinSlideshow();
		$("#KinSlideshow3").KinSlideshow();
		$hi.hide();



	});
	</script>


	<link rel="stylesheet" href="styles/main.css">
</head>
  
  <body>
	
	<iframe src="head.jsp"  width="100%" height="235" scrolling="no" frameborder="0" target="_parent" ></iframe>

	<div id="main" class="l">
		

		<div class="main-left">
			
			<div class="news-w">
			<!-- 改得 -->
			<div class="main-page">
				<div class="left">
					<div class="nav-back"></div>
					<div class="nav">
						<div class="on">找货</div>
						<div>找车</div>
					</div>
				</div>
				<div class="right">
					<div class="content-back"></div>
					<div class="content">
						<div>
							<form action="findByTermPub.action" method="post">
							 <div id="zhaoche">
							 	<br><br><br>
                  				  起始地点<input class="hjx" type="text" id="staraddr" name="puborder.staraddr" onclick="openWindow('staraddr')" /><br><br><br>
                    			到达地点<input class="hjx" type="text" id="finishaddr" name="puborder.finishaddr" onclick="openWindow('finishaddr')"  /><br>
                    			<div style="padding-left:50px;margin-top:30px;"><input type="submit" value="立即查找" style="width:150px;" class="button_blue"/></div>
               				 </div>
              			</form>
						</div>
<script type="text/JavaScript">
	function openWindow( op ){
    	var address=window.showModalDialog("ditu.html","","dialogWidth=750px;dialogHeight=650px");
	 	document.getElementById(op).value=address;	
	}
</script>
			
<!-- 第二的开始 -->
						<div style="margin-top: 20px">
<form action="findByTermCar.action" method="post">
	<center>
车型:<select id="edu" name="car.cartype.ctid">
	<s:iterator var="ct" value="#attr.ctList">
  		<option value="${ct.ctid }">${ct.ctname }</option>
 	</s:iterator>
</select>
载重:<select id="salary" name="cloadStr">
  <option value="0-1000">不限</option>
  <option value="0-1">1吨以下</option>
  <option value="1-20">1-20吨</option>
  <option value="21-40">21-40吨</option>
  <option value="41-60">41-60吨</option>
  <option value="61-1000">60吨以上</option>
</select><br>
 						<div style="padding-left:230px;margin-top:80px;"><input type="submit" value="立即查找" style="width:150px;" class="button_blue"/></div>
</center>
</form>
			
						</div><!-- 第二个end -->
					</div>
				</div>
			</div>
<script src="js/jquery.selectlist.js"></script>
<script type="text/javascript">
	$(function(){
		$('select').selectlist({
			zIndex: 10,
			width: 200,
			height: 40
		});		
	})
</script>
<script type="text/javascript">
$(".main-page .nav div").mouseenter(function () {
	var $this = $(this);
	var index = $this.index();
}).mouseleave(function () {
	var $this = $(this);
	var index = $this.index();
}).click(function () {
	var $this = $(this);
	var index = $this.index();
	var l = -(index * 240);
	$(".main-page .nav div").removeClass("on");
	$(".main-page .nav div").eq(index).addClass("on");
	$(".main-page .content div:eq(0)").stop().animate({ "margin-top": l }, 500);
});
</script>
	<!-- end -->
			</div>


			<div class="car">
				<ul class="tab">
					<li class="on">货源信息</li>
					<li>车辆信息</li>
					<li>认证公司</li>

					<div class="c"></div>
				</ul>

				<div id="hhjjxx" class="bd">
					<table width="100%" >
						<tr class="title">
							<th width="50%" >出发地点—到达地点</th >
							<th width="20%">公司名称</th >
							<th width="10%">类型</th >
							<th width="10%">截止日期</th >
							<th width="10%">查看</th>
						</tr>
					
						<s:iterator var="pub" value="#attr.pubList" status="num">
						<c:if test="${num.index < 6 }">
						<a href="findonePub?puborder.pid=<s:property value="#pub.pid"/>">
						<tr class="bor">
							<td>${pub.staraddr}—${pub.finishaddr}</td>
							<td>${pub.company.cname}</td>
							<td>${pub.goodtype.gtname}</td>
							<td><fmt:formatDate value="${pub.finishtime}" type="date"/> </td>
							<td><a>查看</a></td>
						</tr>
						</a>
						</c:if>
						</s:iterator>
						
<script type="text/javascript">
function move(){
	var dadiv=document.getElementById("dome");
	var xiaodiv=document.getElementById("express");
	dadiv.scrollTop++;
	if(dadiv.scrollTop>xiaodiv.offsetHeight)
	{dadiv.scrollTop=0;
		}
	}
$("#dome").hover(function(){
	clearInterval(temp)
;},function(){
	temp=setInterval("move()",50)
;});

var temp=setInterval("move()",50);
</script>
					
					
					</table>	
				</div>




				<div class="bd" style="display:none;">
					<table width="100%" >
						<tr class="title">
							<th width="30%" >车型</th >
							<th width="20%">载重</th >
							<th width="20%">归属地</th >
							<th width="20%">联系电话</th >
							<th width="10%">查看</th >
						</tr>
						<s:iterator var="car" value="#attr.carList" status="num">
						<c:if test="${num.index < 6 }">
						<a href="findoneCar?car.cid=${car.cid }">
						<tr class="bor">
							<td>${car.cartype.ctname}</td>
							<td>${car.cload}</td>
							<td>${car.caddr}</td>
							<td>${car.phone}</td>
							<td><a>查看</a></td>
						</tr>
						</a>
						</c:if>
						</s:iterator>
					</table>	
				</div>




				<div class="bd" style="display:none;">
					<table width="100%" >
						<tr class="title">
							<th width="30%" >公司名称</th >
							<th width="20%">公司地址</th >
							<th width="20%">公司认证</th >
							<th width="20%">联系方式</th >
							<th width="10%">查看</th >
						</tr>
						<s:iterator var="com" value="#attr.comList" status="num">
						<c:if test="${num.index < 6 }">
						<!-- <a href="findoneCom?company.cid=${com.cid }"> </a>-->
						<tr class="bor">
							<td>${com.cname}</td>
							<td>${com.caddr}</td>
							<td>${com.cvip}</td>
							<td>${com.phone}</td>
							<td><a>查看</a></td>
						</tr>
						
						</c:if>
						</s:iterator>
					</table>	
				</div>


					
			</div>

<!-- 左边end -->

			
		</div>

		<div class="main-right">
			<div class="login">
				<h2>会员登录</h2>
				<div class="bd">
					<input class="bt1" onclick="location.href='carreg.jsp'" type="button" value="车主注册"><br>
					<input class="bt1" onclick="location.href='comreg.jsp'" type="button" value="货源注册"><br>
					<input class="bt1" onclick="location.href='login.jsp'" type="button" value="登　录">
				</div>



			</div>
			<div class="hr" >
				<h2><a href="findByPageNew?nowpage=1">更多>></a>新闻公告</h2>
				<ul style="margin-left: 13px">
				<s:iterator var="n" value="#attr.newList" status="num">
					<c:if test="${num.index  lt 8 }">
						<c:if test="${n.ntitle.length() >= 18 }">
						<li><a href="findoneNew?n.nid=${n.nid}" style="cursor:default;text-decoration:none;" title="${n.ntitle }">*${n.ntitle.substring(0,18) }...</a></li>
						</c:if>
						<c:if test="${n.ntitle.length() < 18 }">
						<li><a href="findoneNew?n.nid=${n.nid}">*${n.ntitle }</a></li>
						</c:if>
					</c:if>
				</s:iterator>
				</ul>
			</div>
		</div>

		<div class="c"></div>
	</div>



		<div class="c"></div>
	</div>
<iframe src="foot.jsp"  width="100%" height="165" scrolling="no" frameborder="0" target="_parent" ></iframe>
	


</body>
</html>