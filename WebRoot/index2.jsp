<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.01 Transitional//EN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人资料</title>
<link rel="stylesheet" type="text/css" href="Assets/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="Assets/css/common.css"/>
<link rel="stylesheet" type="text/css" href="Assets/css/thems.css"/>
<script type="text/javascript" src="Assets/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#left_menu li ul").css("display","none");
	$("#left_menu li:first ul").css("display","block");
	$("#left_menu li .yiji").click(function(){
		$(this).parents("li").find(".erji").css("display","block");
		$(this).parent("li").siblings("li").find(".erji").css("display","none");
	});
})
</script>
</head>

<body>
<!--头部-->

		<iframe src="head.jsp"  width="100%" height="235" scrolling="no" frameborder="0" ></iframe>
<!--头部-->
<!--中间部分-->
<div class="main">
	<!--订单中心-->
    <div class="person clearfix">
    	<div class="order_l person_l">
        	<ul id="left_menu" class="left_menu">
            	<li>
                	<a class="yiji"><span>个人中心</span><em>&nbsp;</em></a>
                    <ul class="erji">
                    	<li>
                        	<i>&nbsp;</i>
                            <strong><a href="javascript:showright('right1')">个人资料</a></strong>
                        </li>
                        <li>
                        	<i>&nbsp;</i>
                            <strong><a href="javascript:showright('right2')">安全中心</a></strong>
                        </li>
                    </ul>
                </li>
                <li>
                	<a class="yiji"><span>商品中心</span><em>&nbsp;</em></a>
                    <ul class="erji">
                    	<li>
                        	<i>&nbsp;</i>
                            <strong><a href="javascript:showright('right3')">添加商品</a></strong>
                        </li>
                        <li>
                        	<i>&nbsp;</i>
                            <strong><a href="javascript:showright('right4')">已发布商品</a></strong>
                        </li>
                    </ul>
                </li>
                <li>
                	<a class="yiji"><span>订单中心</span><em>&nbsp;</em></a>
                    <ul class="erji">
                        <li>
                        	<i>&nbsp;</i>
                            <strong><a href="javascript:showright('right5')">进行中的订单</a></strong>
                        </li>
                        <li>
                        	<i>&nbsp;</i>
                            <strong><a href="javascript:showright('right6')">已完成订单</a></strong>
                        </li>
                        
                    </ul>
                </li>
                <li>
                	<a class="yiji"><span>社区论坛</span><em>&nbsp;</em></a>
                    <ul class="erji">
                        <li>
                        	<i>&nbsp;</i>
                            <strong><a href="javascript:showright('right8')">发表的帖子</a></strong>
                        </li>
                        <li>
                        	<i>&nbsp;</i>
                            <strong><a href="javascript:showright('right9')">我的回复</a></strong>
                        </li>
                        
                    </ul>
                </li>
            </ul>
        </div>
        <div class="person_r">
        	
            	<iframe id="rightFrame" name="rightFrame" width="100%" height="570px"
			scrolling="auto" marginheight="0" marginwidth="0" align="center" 
			style="border: 0px solid #CCC; margin: 0; padding: 0;"></iframe>
           
        </div>
    </div>
    <!--订单中心-->
    <div class="space_hx">&nbsp;</div>
</div>
<!--中间部分-->
<div class="space_hx">&nbsp;</div>
<!--底部-->
<div class="foot_bg">
	<div class="foot">
    	<div class="foot_t">
        	<a href="">业务介绍</a>
            <a href="">联系我们</a>
        </div>
        <div class="copy">
        	Copyright&copy;&nbsp;2012-2015&nbsp; 找物流有限责任公司.&nbsp;&nbsp;All&nbsp;&nbsp;rights&nbsp;&nbsp;reserved. &nbsp;&nbsp;粤ICP备10005645
        </div>
    </div>	
</div>
<!--底部-->
</body>
</html>