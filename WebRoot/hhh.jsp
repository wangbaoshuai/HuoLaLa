<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'hhh.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
.demo{
	width:800px;
	height:155px;
	overflow:hidden;}
	

</style>
<script src="js/jquery-1.9.0.min.js" type="text/javascript"></script>
  </head>
  
  <body>
	
<div class="demo">
    <div class="express">
	<table>
		<s:iterator var="pub" value="#attr.pubList" status="num">
							<c:if test="${num.index < 10 }">
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
							</table>
	</div>
	<div class="express">
	<table>
		<s:iterator var="pub" value="#attr.pubList" status="num">
							<c:if test="${num.index < 10 }">
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
							</table>
	</div>

</div>
<script language="javascript">
function move(){
	var dadiv=$(".demo");
	var xiaodiv=$(".express"); 
	for(var i =0;i<dadiv.length;i++){
		dadiv[i].scrollTop++;
		
		if(dadiv[i].scrollTop>xiaodiv[i].offsetHeight)
			{
			
			dadiv[i].scrollTop=0;
				}
		}
	}

$(".demo").hover(function(){
	clearInterval(temp)
;},function(){
	temp=setInterval("move()",20)
;});

var temp=setInterval("move()",20);

function abcde(){
	var obj_temp = $(".demo");
	alert("aaaa:" +obj_temp.length);
	//setInterval("move()",2000);
}
</script>
	<input type="button" value="clickme" onclick="abcde()"/>
  </body>
</html>
