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
			
			<div id="artlist">
				<h2>当前位置：首页 > 新闻公告</h2>

				<ul>
				<s:iterator var="m" value="#attr.newList" status="num">
					<li>
						<div class="title">
							<a href="findoneNew?n.nid=${m.nid}">${m.ntitle}</a>
					 <p>${m.ncontent.substring(0,70) }...</p>
						</div>

						<div class="date">
							<fmt:formatDate value="${m.ndate}" type="date"/>
						</div>
						<div class="c"></div>
							
					</li>
				</s:iterator>
				</ul>
				<div class="pages">
					<span>第${nowpage }/${allPage }页</span><a href="findByPageNew?nowpage=1">首页</a><a href="findByPageNew?nowpage=${nowpage-1 }">上一页</a>
					<c:forEach var="i" step="1" begin="1" end="${allPage }">
		    			<a href="findByPageNew?nowpage=${i }">${i }&nbsp&nbsp</a>
		  		 	 </c:forEach>
					<a href="findByPageNew?nowpage=${nowpage+1 }">下一页</a><a href="findByPageNew?nowpage=${allPage }">末页</a>
				</div>
				<div class="c"></div>
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

	

	
<iframe src="foot.jsp"  width="100%" height="165" scrolling="no" frameborder="0" target="_parent" ></iframe>
	
</body>
</html>