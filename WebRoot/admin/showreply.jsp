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
<link type="text/css" rel="stylesheet" href="css/lyb.css" />
</head>
<body>
	


		<div class="guestbook">
			<h2>楼主</h2>
			<div>
						<div style="float: left;"><img style="border-radius: 50%;" src="images/1.jpg" alt="" width="75" height="75"></div>
						<div style="float: left;margin-left: 15px">
				
						<dl>
							<dt>楼主：${findoneforum.car.cname }${findoneforum.company.cname } </dt>
							<br>
							<dd class="author"><h3>${findoneforum.ftitle }</h3></dd>
							<br>
							<div class="timer" style="margin-left: 700px" >${findoneforum.fdate }</div>
						</dl>
				
						</div>
					</div>
				<div class="clear"></div>
					<hr>
			<ul>
					<s:iterator var="r" value="#attr.findoneforum.replies" status="num">
					<li>
					<div>
						<div style="float: left;"><img src="styles/logo.jpg" alt="" width="75" height="75"></div>
						<div style="float: left;margin-left: 15px">
				
						<dl>
							<dt>${num.index+1 }楼 &nbsp&nbsp&nbsp<a href="deleteReply?reply.rid=${r.rid}&reply.forum.fid=${findoneforum.fid }&type=admin">删除</a></dt>
							<br>
							<dd class="author"><h3>${r.rcontent }</h3></dd>
							<br>
							<div class="timer" style="margin-left: 680px" >${r.car.cname }${r.company.cname }&nbsp&nbsp&nbsp${r.rdate }</div>
						</dl>
				
						</div>
					</div>
					</li>
					<div class="clear"></div>
					</s:iterator>
					
				</ul>
			<div class="clear"></div>
			<!-- 
			<div class="pager">
				<ul class="clearfix">
					<li><a href="#">上一页</a></li>
					<li class="current">1</li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li> 
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">下一页</a></li>
				</ul>
			</div>
			 -->
		
		</div>


	
</body>
</html>