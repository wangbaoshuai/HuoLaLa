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
		
			
				<form action="addForum.action" method="post">
				<!-- 判断用户类型 -->
				<input type="hidden" name="type" value="${user.type}">
				<input type="hidden" name="<c:if test="${user.type eq '1' }">forum.company.cid</c:if><c:if test="${user.type eq '2' }">forum.car.cid</c:if>" value="${user.cid }">
					<table>
						<tr>
							<td class="field">帖子标题：</td>
							<td><input class="hjx2"  name="forum.ftitle" ></td>
						</tr>
						<tr>
							<td class="field">帖子内容：</td>
							<td><textarea   name="forum.fcontent" cols="85" rows="18" ></textarea></td>
						</tr>
						<tr>
							<td></td>
							<td><label class="ui-blue"><input class="button_blue"  type="submit" name="submit" value="发表帖子" /></label></td>
						</tr>
					</table>
				</form>
			</div>
		


	<div class="c"></div>

	

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