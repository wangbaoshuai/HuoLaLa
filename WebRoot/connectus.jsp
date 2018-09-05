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
    
    <title>My JSP 'new.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="styles/main.css">
</head>
<body>
	
	<iframe src="head.jsp"  width="100%" height="235" scrolling="no" frameborder="0" ></iframe>

	<div id="main" class="l">
		

		<div class="main-left">
			
			<div id="art">
				<h2>当前位置：首页 > 联系我们</h2>
				
				<div class="content">
				<img border="0" alt="" src="images/conectme.JPG">
				</div>


				
			</div>


	

			
		</div>

		<div class="main-right">
			
			



			<div class="hr" style="margin-bottom:10px;">
				<h2><a href="findByPageNew?nowpage=1">更多>></a>新闻公告</h2>
				<ul style="margin-left: 13px">
				<s:iterator var="m" value="#attr.newList" status="num">
					<c:if test="${num.index  lt 8 }">
						<c:if test="${m.ntitle.length() >= 18 }">
						<li><a href="findoneNew?n.nid=${m.nid}" style="cursor:default;text-decoration:none;" title="${m.ntitle }">*${m.ntitle.substring(0,18) }...</a></li>
						</c:if>
						<c:if test="${m.ntitle.length() < 18 }">
						<li><a href="findoneNew?n.nid=${m.nid}">*${m.ntitle }</a></li>
						</c:if>
					</c:if>
				</s:iterator>
				</ul>
			</div>


			<div style="width:264px;height:216px;background:#eee;">
				<!--广告图 <img src="" alt="">-->
			</div>
		</div>

		<div class="c"></div>
	</div>

	

	

	<div id="link" class="l">
		<h2>友情链接</h2>
		<div class="con">
			<div class="thumb">
				<a href=""><img src="styles/thumb-link.png" alt=""></a>
				<a href=""><img src="styles/thumb-link.png" alt=""></a>
				<a href=""><img src="styles/thumb-link.png" alt=""></a>
				<a href=""><img src="styles/thumb-link.png" alt=""></a>
				<a href=""><img src="styles/thumb-link.png" alt=""></a>
				<a href=""><img src="styles/thumb-link.png" alt=""></a>
				<a href=""><img src="styles/thumb-link.png" alt=""></a>
				
			</div>
			<div class="textlink">
				<a href="">北京科技人才网</a>
				<a href="">北京科技人才网</a>
				<a href="">北京科技人才网</a>
				<a href="">北京科技人才网</a>
				<a href="">北京科技人才网</a>
				<a href="">北京科技人才网</a>
				<a href="">北京科技人才网</a>
				<a href="">北京科技人才网</a>
				<a href="">北京科技人才网</a>
				<a href="">北京科技人才网</a>
				<a href="">北京科技人才网</a>
				<a href="">北京科技人才网</a>
				<a href="">北京科技人才网</a>
				<a href="">北京科技人才网</a>

			</div>
		</div>
		<div class="c"></div>
	</div>
	
	<div id="footer-w">
		<div id="footer" class="l">
			<p class="sub">
				<a href="">友情连接</a>|<a href="">网站导航</a>|<a href="">收费标准</a>|<a href="">联系方式</a>|<a href="">关于我们</a>|<a href="">服务介绍</a>
			</p>
			<p class="copy">版权所有 宜城交通物流网 abcchina.com 鄂ICP备10202370号-7 </p>
		</div>
	</div>

	
</body>
</html>