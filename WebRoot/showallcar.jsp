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
<s:iterator var="c" value="#attr.carListByTerm" >
  <TR>
    <TD class=house-thumb><A href="findoneCar?car.cid=<s:property value="#c.cid"/>" target="_blank"><img src="images/${c.images }" width="100" height="75" alt=""></a></TD>
    <TD>
      <DL>
        <DT><s:property value="#c.cnumber"/></DT>
        <DD>车辆归属地：<s:property value="#c.caddr"/>
        <BR>载重：<s:property value="#c.cload"/><s:property value="#pub.unit"/></DD></DL></TD>
    <TD class=house-type><s:property value="#c.cartype.ctname"/></TD>
    <TD class=house-price>联系电话：<SPAN><s:property value="#c.phone"/></SPAN></TD></TR>
  </s:iterator>
  </TABLE>
  
<DIV class=pager>
<form name="sform" action="findByTermCar" method="post">
<input type="hidden" name="nowpage" >
<input type="hidden" name="car.cartype.ctid" value="${car.cartype.ctid }">
<input type="hidden" name="cloadStr" value="${cloadStr }">
</form>
<UL>
  <LI class=current><A href="javascript:changgepage(1)">首页</A></LI>
  <LI><A href="javascript:changgepage(${nowpage-1 })">上一页</A></LI>
  <c:forEach var="i" step="1" begin="1" end="${allPage }">
		  <LI><a href="javascript:changgepage(${i })">${i }&nbsp&nbsp</a></LI>
</c:forEach>
  <LI><A href="javascript:changgepage(${nowpage+1 })">下一页</A></LI>
  <LI><A href="javascript:changgepage(${allPage })">末页</A></LI></UL>
  <SPAN class=total>第${nowpage}/${allPage }页</SPAN> </DIV></DIV>
 <script type="text/javascript">
  function changgepage(op){
  document.sform.nowpage.value=op;
  document.sform.submit();
  
  }
  </script>
	</div>
	<!-- 底部 -->
	
	
	<iframe src="foot.jsp"  width="100%" height="165" scrolling="no" frameborder="0" target="_parent" ></iframe>
	
  </body>
</html>