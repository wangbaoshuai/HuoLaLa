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
<link rel="stylesheet" href="styles/main.css">
<style>
#page{width:auto;}
#comm-header-inner,#content{width:950px;margin:auto;}
#logo{padding-top:26px;padding-bottom:12px;}
#header .wrap-box{margin-top:-67px;}
#logo .logo{position:relative;overflow:hidden;display:inline-block;width:140px;height:35px;font-size:35px;line-height:35px;color:#f40;}
#logo .logo .i{position:absolute;width:140px;height:35px;top:0;left:0;background:url(http://a.tbcdn.cn/tbsp/img/header/logo.png);}
</style>
</head>
<body>
	<iframe src="head.jsp"  width="100%" height="235" scrolling="no" frameborder="0" ></iframe>
	<!-- head end -->
	<div id="main" class="1">
	<div class="main">
	<!--订单中心-->
    <div class="person clearfix" >
    	<div class="order_l person_l">
        	<ul id="left_menu" class="left_menu">
            	<li>
                	<a class="yiji"><span>个人中心</span><em>&nbsp;</em></a>
                    <ul class="erji">
                    	<li>
                        	<i>&nbsp;</i>
                            <strong><a href="javascript:showright('right1')">车辆信息</a></strong>
                        </li>
                        <li>
                        	<i>&nbsp;</i>
                            <strong><a href="javascript:showright('right2')">修个信息</a></strong>
                        </li>
                    </ul>
                </li>
                <li>
                	<a class="yiji"><span>订单中心</span><em>&nbsp;</em></a>
                    <ul class="erji">
                    	<li>
                        	<i>&nbsp;</i>
                            <strong><a href="javascript:showright('right3')">未完成订单</a></strong>
                        </li>
                        <li>
                        	<i>&nbsp;</i>
                            <strong><a href="javascript:showright('right4')">历史订单</a></strong>
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
<script src="js/jquery-1.9.0.min.js" type="text/javascript"></script>
<script type="text/javascript">
function showright(op){
	var objs = $(".person_r");
	for(var i=0;i<objs.length;i++){
		objs[i].style.display='none';
	}
	document.getElementById(op).style.display='block';
}
</script>
        <!-- com bigin -->
        <div class="person_r" id="right1" >
        	<div class="person_h">
            	<span>个人资料设置</span>
            </div>
            <div class="person_rmain">
            	<strong><h2>帐户信息</h2></strong>
                <ul>
                	<li>
                    	
                        <em>${user.images }</em>
                    </li>
                	<li>
                	<li>
                    	<span>登陆帐户：</span>
                        <em>${user.loginname }</em>
                    </li>
                    <li>
                    	<span>车主姓名：</span>
                        <em>${user.cname }</em>
                    </li>
                    <li>
                    	<span>车主姓名：</span>
                        <em>${user.cname }</em>
                    </li>
                    <li>
                    	<span>车牌号：</span>
                        <em>${user.cnumber }</em>
                    </li>
                    <li>
                    	<span>车长：</span>
                        <em>${user.csize }</em>
                    </li>
                    <li>
                    	<span>载重：</span>
                        <em>${user.cload }</em>
                    </li>
                    <li>
                    	<span>车辆归属地：</span>
                        <em>${user.caddr }</em>
                    </li>
                    <!--<li class="jifen">
                    	<span>我的积分：</span>
                        <i>0分</i>|<a href="">礼品兑换</a>|<a href="">如何获取积分</a>
                    </li>-->
                </ul>
               <br><br>
            </div>
        </div>
        <!-- 2 -->
        <div class="person_r" id="right2" style="display: none" >
        	<div class="person_h">
            	<span>修改资料</span>
            </div>
            <div class="person_rmain">
                <strong ><h2>基本信息</h2></strong>
                <form action="updatecarUser" method="post"   enctype="multipart/form-data">
                <input type="hidden" name="car.cid" value="${user.cid }">
                <ul>
                	<li>
                    	<span>密码：</span>
                        <input class="hjx" name="car.loginpass" type="text"  value="${user.loginpass }">
                    </li>
                    <li>
                    	<span>联系方式：</span>
                        <input class="hjx" name="car.phone" type="text" value="${user.phone }">
                    </li>
                    <li>
                    	<span>车辆图片：</span>
                        <input class="hjx" name="image" type="file" value="">
                    </li>
                    <li>
                    	<span>车辆归属地：</span>
                        <input class="hjx" name="car.caddr" type="text"  value="${user.caddr }">
                    </li>
                   <li>
                    	<span>车牌号：</span>
                        <input class="hjx" name="car.cnumber" type="text"  value="${user.cnumber }">
                    </li>
                    <li>
                    	<span>载重：</span>
                        <input class="hjx" name="car.cload" type="text"  value="${user.cload }">
                    </li>
                    <li>
                    	<span>载长：</span>
                        <input class="hjx" name="car.csize" type="text"  value="${user.csize }">
                    </li>
                    <li>
                    	<div style="padding-left:190px;margin-top:30px;"><input type="submit" value="修	改" style="width:150px;" class="button_blue"/></div>
                    </li>
                </ul>
                </form>
            </div>
        </div>
         <!-- 2end -->
         
          <!-- 3-->
        <div class="person_r" id="right3" style="display: none" >
        	<div class="person_h">
            	<span>待完成订单</span>
            </div>
            <div class="person_rmain" >
            	<table class="table table-bordered table-hover table-striped" width="700" border="1">
         <tbody>
           <tr  align="center">
             <td>编号</td>
             <td>商品名</td>
             <td>发货地址</td>
             <td>到达地址</td>
             <td>预订重量</td>
             <td>预订时间</td>
             <td>订单状态</td>
             <td>取消订单</td>
           </tr>
            <s:iterator var="get" value="#attr.user.getorders">
            <c:if test="${get.status  !=  '已完成'}">
           <tr align="center">
             <td>${get.gid }</td>
             <td>${get.puborder.goodname }</td>
             <td>${get.puborder.staraddr }</td>
             <td>${get.puborder.finishaddr }</td>
             <td>${get.weight }</td>
             <td>${get.time}</td>
             <td>${get.status }</td>
             <td><a href="deleteGet?getorder.gid=${get.gid }">取消订单</a></td>
           </tr>
           </c:if>
           </s:iterator>
         </tbody>
       </table>
            </div>
        </div>
         <!-- 3end -->
         <!-- 4 -->
        <div class="person_r" id="right4" style="display: none" >
        	<div class="person_h">
            	<span>历史订单</span>
            </div>
            <div class="person_rmain" >
            	<table class="table table-bordered table-hover table-striped" width="700" border="1">
         <tbody>
            <tr  align="center">
             <td>编号</td>
             <td>商品名</td>
             <td>发货地址</td>
             <td>到达地址</td>
             <td>预订重量</td>
             <td>预订时间</td>
             <td>查看详情</td>
           </tr>
            <s:iterator var="get" value="#attr.user.getorders">
            <c:if test="${get.status == '已完成'}">
           <tr align="center">
             <td>${get.gid }</td>
             <td>${get.puborder.goodname }</td>
             <td>${get.puborder.staraddr }</td>
             <td>${get.puborder.finishaddr }</td>
             <td>${get.weight }</td>
             <td>${get.time}</td>
             <td>查看</td>
           </tr>
           </c:if>
           </s:iterator>
         </tbody>
       </table>
            </div>
        </div>
         <!-- 4end -->
         <!-- 8 -->
        <div class="person_r" id="right8" style="display: none" >
        	<div class="person_h">
            	<span>我的帖子</span>
            </div>
            <div class="person_rmain" >
            	<table class="table table-bordered table-hover table-striped" width="700" border="1">
         <tbody>
           <tr  align="center">
             
             <td>日期</td>
             <td>标题</td>
             <td>操作</td>
           </tr>
            <s:iterator var="forum" value="#attr.user.forums">
           <tr align="center">
             <td>${forum.fdate }</td>
             <td><c:if test="${forum.ftitle.length() >= 20 }"><a href="findoneForum?forum.fid=${forum.fid }">${forum.ftitle.substring(0,18) }...</a></c:if>
             	<c:if test="${forum.ftitle.length() < 20 }"><a href="findoneForum?forum.fid=${forum.fid }">${forum.ftitle }</a></c:if>
             </td>
             <td><a id="cz" href="deleteForum?forum.fid=${forum.fid }">删除</a></td>
           </tr>
           </s:iterator>
         </tbody>
       </table>
       <br>
            </div>
        </div>
         <!-- 8end -->
         <!-- 9 -->
        <div class="person_r" id="right9" style="display: none" >
        	<div class="person_h">
            	<span>我的回复</span>
            </div>
            <div class="person_rmain" >
            	<table class="table table-bordered table-hover table-striped" width="700" border="1">
         <tbody>
           <tr  align="center">
             
             <td>日期</td>
             <td>楼主贴</td>
             <td>内容</td>
             <td>操作</td>
           </tr>
            <s:iterator var="rep" value="#attr.user.replies">
           <tr align="center">
             <td>${rep.rdate }</td>
             <td><c:if test="${rep.forum.ftitle.length() >= 20 }"><a href="findoneForum?forum.fid=${rep.forum.fid }">${rep.forum.ftitle.substring(0,18) }...</a></c:if>
             	<c:if test="${rep.forum.ftitle.length() < 20 }"><a href="findoneForum?forum.fid=${rep.forum.fid }">${rep.forum.ftitle }</a></c:if>
             </td>
             <td><c:if test="${rep.rcontent.length() >= 20 }">${rep.rcontent.substring(0,18) }...</c:if>
             	<c:if test="${rep.rcontent.length() < 20 }">${rep.rcontent }</c:if>
             </td>
             <td><a href="deleteReply?reply.rid=${rep.rid }">删除</a></td>
           </tr>
           </s:iterator>
         </tbody>
       </table>
       <br>
            </div>
        </div>
         <!-- 9end -->
        <!-- g个人end -->
    </div>
    <!--订单中心-->
    <div class="space_hx">&nbsp;</div>
</div>
<!--中间部分-->
	</div>
	<!-- 底部 -->
	
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
			<p class="copy">版权所有 宜城交通物流网 abcchina.com 鄂ICP备10202370号-7  来源:<a href="http://www.mycodes.net/" target="_blank">源码之家</a></p>
		</div>
	</div>
	
  </body>
</html>
