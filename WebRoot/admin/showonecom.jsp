<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <link rel="stylesheet" type="text/css" href="Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="Css/style.css" />
    <script type="text/javascript" src="Js/jquery.js"></script>
    <script type="text/javascript" src="Js/jquery.sorted.js"></script>
    <script type="text/javascript" src="Js/bootstrap.js"></script>
    <script type="text/javascript" src="Js/ckform.js"></script>
    <script type="text/javascript" src="Js/common.js"></script>
    <script type="text/javascript" src="js/showdate.js"></script>
    <style type="text/css">
        body {font-size: 20px;
             padding-bottom: 40px;
             background-color:#e9e7ef;
             font-size:17px;
        }
        .sidebar-nav {
            padding: 9px 0;
        }

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }
    </style>
</head>
<h3><strong>基本信息：</strong></h3>
   <table class="table table-condensed">
               <tr>              
	              <td width="18%" height="30" align="center">用 户 名：</td>
	              <td width="82%" class="word_grey">${findonecom.loginname}</td>
	            </tr>
				<tr>              
	              <td width="18%" height="30" align="center">公司名：</td>
	              <td width="82%" class="word_grey">${findonecom.cname}</td>
	            </tr>
	            <tr>
	              <td height="28" align="center">密&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
	              <td height="28">${findonecom.loginpass}</td>
	            </tr>
				<tr>
	              <td height="28" align="center">VIP认证类型：</td>
	              <td height="28">${findonecom.cvip}</td>
	            </tr> 
	            <tr>
	              <td height="28" align="center">联系方式：</td>
	              <td height="28">${findonecom.phone}</td>
	            </tr> 
			   
	            <tr>
	              <td height="28" align="center">公司地址：</td>
	              <td height="28">${findonecom.caddr}</td>
	            </tr> 
	        </table>				
        <h3><strong>操作记录：</strong></h3><br>
		&nbsp;&nbsp;&nbsp;&nbsp;<strong>发布的商品：</strong>
	 
	   <table class="table table-condensed"   >
	          <tr>
	             <td class="word_grey">序号 &nbsp;</td>
	              <td class="word_grey">商品名 &nbsp;</td>
				  <td class="word_grey">发布时间 &nbsp; </td>
				  <td class="word_grey">状态 &nbsp;</td>
	            </tr>  
				  <s:iterator var="pub" value="#attr.findonecom.puborders">
	           <tr>
	               <td class="word_grey">${pub.pid }</td>
	              <td class="word_grey">${pub.goodname }</td>
				  <td class="word_grey">${pub.startime }</td>
				  <td class="word_grey">${pub.status }</td>
	            </tr> 
			  	</s:iterator>
	              
				</table>
			<!--/////////////////////////////////////-->  
	 &nbsp;&nbsp;&nbsp;&nbsp; <strong>订单记录：</strong>        
		
	<table class="table table-condensed"  >
		<tr>
	             
	              <td class="word_grey">序号</td>
				  <td class="word_grey">预订时间</td>
				  <td class="word_grey">订单状态</td>
	            </tr> 
			<s:iterator var="pub" value="#attr.findonecom.puborders">
            <s:iterator var="get" value="#pub.getorders">
             <tr>
             <td class="word_grey">${get.gid }</td>
             <td class="word_grey">${get.time}</td>
             <td class="word_grey">${get.status }</td>
             
           </tr>
           </s:iterator>
           </s:iterator>
				</table>
				<!--/////////////////////////////////////-->
		&nbsp;&nbsp;&nbsp;&nbsp;	
		<strong>上传记录：</strong>
				
			<table  class="table table-condensed">
	           <tr>
	             
	              <td class="word_grey">序号</td>
				  <td class="word_grey">上传对象</td>
				  <td class="word_grey">上传时间</td>
	            </tr>               
	           <tr>
			   
	               <td class="word_grey">1</td>
	              <td class="word_grey">复仇者联盟</td>
				  <td class="word_grey">2015.03.15</td>
	            </tr> 
				 <tr>
			  
	               <td class="word_grey">2</td>
	              <td class="word_grey">复仇者联盟</td>
				  <td class="word_grey">2015.03.15</td>
	            </tr> 
            </table> 
</body>
</html>
