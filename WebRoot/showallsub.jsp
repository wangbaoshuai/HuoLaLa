<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
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
<s:iterator var="pub" value="#attr.pubListByTerm" >
  <TR>
    <TD class=house-thumb><A href="findonePub?puborder.pid=<s:property value="#pub.pid"/>" target="_blank"><img src="images/${pub.images }" width="100" height="75" alt=""></a></TD>
    <TD>
      <DL>
        <DT><A href="findonePub?puborder.pid=<s:property value="#pub.pid"/>" target="_blank"><s:property value="#pub.company.cname"/></A></DT>
        <DD><s:property value="#pub.staraddr"/>——<s:property value="#pub.finishaddr"/>
        <BR>剩余：<s:property value="#pub.weight"/><s:property value="#pub.unit"/></DD></DL></TD>
    <TD class=house-type><s:property value="#pub.goodname"/></TD>
    <TD class=house-price><SPAN><s:property value="#pub.price"/></SPAN>元/<s:property value="#pub.unit"/></TD></TR>
  </s:iterator>
  </TABLE>
  
<DIV class=pager>
<form name="sform" action="findByTermPub" method="post">
<input type="hidden" name="nowpage" >
<input type="hidden" name="puborder.staraddr" value="${puborder.staraddr }">
<input type="hidden" name="puborder.finishaddr" value="${puborder.finishaddr }">
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
	<div class="c"></div>
<iframe src="foot.jsp"  width="100%" height="165" scrolling="no" frameborder="0" target="_parent" ></iframe>
  </body>
</html>