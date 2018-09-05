<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 2.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'carreg.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="styles/main.css">
<style type="text/css">
#body{
	margin:0 auto;
	width:600px;
	border:#000 1px solid ;}
.bq{text-align:right;}
.cg{border:#060 1px solid;
	
	background:url(images/li_ok.gif) no-repeat #AEFBD0;
	padding-left:18px;
	}
.ts{
	border:#FC0 1px solid ;
	background-color:#FFC;
	display:none;
	}
.cw{
	border:#900 1px solid;
	background: no-repeat url(images/li_err.gif) #FCC;
	padding-left:18px;
	}
tr{

height: 40px;
}
</style>
</head>
<body>
	<iframe src="head.jsp"  width="100%" height="235" scrolling="no" frameborder="0" ></iframe>
	<!-- head end -->
	<div id="main" class="1" style="margin-left: 440px">
	<form name="updatetab" action="updatePub" method="post" enctype="multipart/form-data" >
            	<input type="hidden" name="puborder.pid" value="${findonepub.pid }">
            	<input type="hidden" name="puborder.startime" value="${findonepub.startime }">
            	<input type="hidden" name="puborder.company.cid" value="${user.cid }">
				<table class="form">
					<tr>
						<td class="field">发货地址：</td>
						<td width=""><input class="hjx" type="text" name="puborder.staraddr"  value="${findonepub.staraddr }" id="staraddr" onclick="openWindow('staraddr')"  onblur="checkcaddr('caddr')"/></td>
						
					</tr>
					<tr>
						<td class="field">到达地址：</td>
						<td width=""><input class="hjx" type="text" name="puborder.finishaddr"  value="${findonepub.finishaddr }" id="finishaddr" onclick="openWindow('finishaddr')"  onblur="checkcaddr('caddr')"/></td>
						
					</tr>
					<tr>
						<td class="field">截止日期：</td>
						<td width=""><input class="hjx" type="text" name="puborder.finishtime"  value="${findonepub.finishtime }" id="staraddr" /></td>
						
					</tr>
					<tr>
						<td class="field">重量：</td>
						<td><input class="hjx" type="text" size="12" value="${findonepub.weight }" name="puborder.weight" id="loginpass" onfocus="tsxx('pwd')" onblur="checkpwd('pwd')" /></td>
						
					</tr>
					<tr>
						<td class="field">单位：</td>
						<td><select class="hjx" class="hjx1" id="edu" name="puborder.unit">
							<option <c:if test="${findonepub.unit == '吨' }">selected="selected"</c:if> value="吨">吨</option>
							<option <c:if test="${findonepub.unit == '公斤' }">selected="selected"</c:if> value="公斤">公斤</option>
							</select></td>
						
					</tr>
					<tr>
						<td class="field">起步重：</td>
						<td><input class="hjx" type="text" size="22" name="puborder.starweight" value="${findonepub.starweight }" /></td>
					</tr>
					<tr>
						<td class="field">货物图片：</td>
						<td><input class="hjx" type="file" class="text" name="image" /></td>
					</tr>
					<tr>
						<td class="field">规格：</td>
						<td><input class="hjx" type="text" size="22" name="puborder.space" id="carsize" value="${findonepub.space }"/>（重量）单位/平方米</td>
					</tr>
					<tr>
						<td class="field">货物类型：</td>
						<td><select class="hjx" style="width:200px" id="edu" name="puborder.goodtype.gtid">
							<s:iterator var="goodt" value="#attr.gtList">
						  		<option <c:if test="${findonepub.goodtype.gtid == goodt.gtid }">selected="selected"</c:if> value="${goodt.gtid }">${goodt.gtname }</option>
						 	</s:iterator>
						</select></td>
					</tr>
					<tr>
						<td class="field">货物名称：</td>
						<td><input class="hjx" type="text" size="22" name="puborder.goodname"  id="ccload" value="${findonepub.goodname }" /></td>
					</tr>
					<tr>
						<td class="field">运费：</td>
						<td><input class="hjx" type="text" size="22" name="puborder.price" id="carnumber" value="${findonepub.price }" />元/（单位）重量</td>
					</tr>
					
					<tr>
						<td class="field">状态：</td>
						<td><input type="radio" <c:if test="${findonepub.status != '2' }">checked="checked"</c:if> value="1" name="puborder.status">上架&nbsp&nbsp&nbsp&nbsp<input type="radio" <c:if test="${findonepub.status == '2' }">checked="checked"</c:if> value="2" name="puborder.status">下架</td>
					</tr>
					<tr>
						<td></td>
						<td><label class="ui-blue"><input class="button_blue"   type="button" onclick="sub()" value="修　改"></label></td>
					</tr>
				</table>
			</form>
	</div>
	<!-- 底部 -->
	<iframe src="foot.jsp"  width="100%" height="165" scrolling="no" frameborder="0" target="_parent" ></iframe>
  </body>
</html>
