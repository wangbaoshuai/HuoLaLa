<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'foot.jsp' starting page</title>
    
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
   <div id="link" class="l">
		<h2>友情链接</h2>
		<div class="con">
			
			<dl>
			<dt><a href=""><img src="styles/thumb-link.png" alt=""></a></dt>
			<dd><a href="">北京科技人才网</a></dd>
			</dl>
			<dl>
			<dt><a href=""><img src="styles/thumb-link.png" alt=""></a></dt>
			<dd><a href="">北京科技人才网</a></dd>
			</dl>
			<dl>
			<dt><a href=""><img src="styles/thumb-link.png" alt=""></a></dt>
			<dd><a href="">北京科技人才网</a></dd>
			</dl>
			<dl>
			<dt><a href=""><img src="styles/thumb-link.png" alt=""></a></dt>
			<dd><a href="">北京科技人才网</a></dd>
			</dl>
			<dl>
			<dt><a href=""><img src="styles/thumb-link.png" alt=""></a></dt>
			<dd><a href="">北京科技人才网</a></dd>
			</dl>
			<dl>
			<dt><a href=""><img src="styles/thumb-link.png" alt=""></a></dt>
			<dd><a href="">北京科技人才网</a></dd>
			</dl>	
			<dl>
			<dt><a href=""><img src="styles/thumb-link.png" alt=""></a></dt>
			<dd><a href="">北京科技人才网</a></dd>
			</dl>
			<dl>
			<dt><a href=""><img src="styles/thumb-link.png" alt=""></a></dt>
			<dd><a href="">北京科技人才网</a></dd>
			
		</div>
		<div class="c"></div>
	</div>
	
	<div id="footer-w">
		<div id="footer" class="l">
			<p class="sub">
				<a href="">友情连接</a>|<a href="">网站导航</a>|<a href="">收费标准</a>|<a href="">联系方式</a>|<a href="">关于我们</a>|<a href="">服务介绍</a>
			</p>
			<p class="copy">版权所有 有单了物流网 www.youdanle.com 京ICP备10202370号-7 </p>
		</div>
	</div>
  </body>
</html>
