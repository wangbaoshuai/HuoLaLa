<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    

<link rel="stylesheet" href="styles/main.css">
</head>
<body>
	
	<div id="top" class="l">
		<div id="logo"><a href="index.jsp"  target="_parent"><img src="styles/logo.jpg" alt=""></a></div>
		<div class="top-banner"><img src="styles/top-banner.jpg" alt=""></div>
		<div class="tel-w">
			<div class="find">
				<a href="findByTermCar?nowpage=1"  target="_parent" class="car"></a>&nbsp;&nbsp;<a href="findByTermPub?nowpage=1"  target="_parent" class="pro"></a>
			</div>
			<div class="tel">
				<c:if test="${user.type == 1 }"><a href="personal.jsp" target="_parent">个人中心</a>&nbsp&nbsp<a href="login.jsp" target="_parent">退出</a></c:if>
				<c:if test="${user.type == 2 }"><a href="carinfo.jsp" target="_parent">个人中心</a>&nbsp&nbsp<a href="login.jsp" target="_parent">退出</a></c:if>	
				<c:if test="${empty user }">&nbsp&nbsp&nbsp<a href="login.jsp" target="_parent">请登录</a></c:if>	
			</div>
		</div>
		<div class="c"></div>
	</div>

	<div id="nav" class="l">
		<ul>
			<li><a href="findallInit" target="_parent">首页</a></li>
			<li><a href="findByTermCar?nowpage=1" target="_parent">车源信息</a></li>
			<li><a href="findByTermPub?nowpage=1" target="_parent">货源信息</a></li>
			<li><a href="findByPageNew?nowpage=1" target="_parent">物流资讯</a></li>
			<li><a href="findByPageNew?nowpage=1" target="_parent">新闻通告</a></li>
			<li><a href="findByTermCom?nowpage=1" target="_parent">认证企业</a></li>
			<li><a href="findByTermPub?nowpage=1" target="_parent">最新货源</a></li>
			<li><a href="" target="_parent">货源销售榜</a></li>
			<li><a href="findByPageForum?nowpage=1" target="_parent">社区论坛</a></li>
			<li><a href="" target="_parent">物流宝典</a></li>
			<li><a href="" target="_parent">企业展示</a></li>
			<li><a href="connectus.jsp" target="_parent">联系我们</a></li>

			<div class="c"></div>
		</ul>
	</div>

	<div id="tip" class="l">
		通知公告:有单了物流网（www.youdanle.com）  是公共信息平台，免费为企业产品宣传及形象展示  ，免费查看和发布车辆货源和产品信息。
	</div>

	<div id="banner" class="l">
		<img src="styles/banner.png" alt="">
	</div>
	<!-- head end -->
  </body>
</html>
