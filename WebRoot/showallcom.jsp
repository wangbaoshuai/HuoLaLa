<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showallsub.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="styles/main.css">
<LINK rel=stylesheet type=text/css href="css/style.css">
</head>
<body>
	<iframe src="head.jsp"  width="100%" height="235" scrolling="no" frameborder="0" ></iframe>
	<!-- head end -->
	<div id="main" class="1">
	<DIV class="main wrap">
<TABLE class=house-list>
<s:iterator var="com" value="#attr.comListByTerm" >
  <TR>
    <TD class=house-thumb><A href="findoneCom?company.cid=<s:property value="#com.cid"/>" target="_blank"><img src="images/${com.images }" width="100" height="75" alt=""></a></TD>
    <TD>
      <DL>
        <DT><A href="findoneCom?company.cid=<s:property value="#com.cid"/>" target="_blank"><s:property value="#com.cname"/></A></DT>
        <DD><s:property value="#com.caddr"/>
        </DD></DL></TD>
    <TD class=house-type><s:property value="#com.cvip"/></TD>
    <TD class=house-price><SPAN><s:property value="#com.phone"/></SPAN></TD></TR>
  </s:iterator>
  </TABLE>
  
<DIV class=pager>
<UL>
  <LI class=current><A href="findByTermCom?nowpage=1">首页</A></LI>
  <LI><A href="findByTermCom?nowpage=${nowpage-1 }">上一页</A></LI>
  <c:forEach var="i" step="1" begin="1" end="${allPage }">
		  <LI><a href="findByTermCom?nowpage=${i }">${i }&nbsp&nbsp</a></LI>
</c:forEach>
  <LI><A href="findByTermCom?nowpage=${nowpage+1 }">下一页</A></LI>
  <LI><A href="findByTermCom?nowpage=${allPage }">末页</A></LI></UL>
  <SPAN class=total>第${nowpage}/${allPage }页</SPAN> </DIV></DIV>
	</div>
	<!-- 底部 -->
	

<iframe src="foot.jsp"  width="100%" height="165" scrolling="no" frameborder="0" target="_parent" ></iframe>
  </body>
</html>