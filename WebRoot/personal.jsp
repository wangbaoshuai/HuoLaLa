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
<script src="js/jquery-1.9.0.min.js" type="text/javascript"></script>
<script type="text/javascript">
function showright(op){
	var objs = $(".person_r");
	for(var i=0;i<objs.length;i++){
		objs[i].style.display='none';
	}
	document.getElementById(op).style.display='block';
}
function updatepub(op){
	    if(op=="")
	    	return ;
	    $.ajax({
		    type:"post",
		    url:"ajax/findonepubAjax.action",
		    data:"pid="+op,
		    datatype:"html",
		    success:function(resu){
		    
		    },
		    error:function(){
		    	alert("出错了");
		    }
	    });
	  //刷新
	 	var objs = $(".person_r");
		for(var i=0;i<objs.length;i++){
			objs[i].style.display='none';
		}
		document.getElementById("right7").style.display='block';
    }
function sub(){
	document.updatetab.submit();
	var objs = $(".person_r");
		for(var i=0;i<objs.length;i++){
			objs[i].style.display='none';
		}
		document.getElementById("right4").style.display='block';
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
                    	
                        <em><img alt="" src="images/${user.images }"></em>
                    </li>
                	<li>
                    	<span>登陆帐户：</span>
                        <em>${user.loginname }</em>
                    </li>
                    <li>
                    	<span>VIP认证：</span>
                        <em>${user.cvip }</em>
                    </li>
                    <li>
                    	<span>公司名称：</span>
                        <em>${user.cname }</em>
                    </li>
                    <li>
                    	<span>公司地址：</span>
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
            	<span>修改公司信息</span>
            </div>
            <div class="person_rmain">
                <strong ><h2>修改信息</h2></strong>
                <form action="updatecomUser" method="post"  enctype="multipart/form-data">
                <input type="hidden" name="company.cid" value="${user.cid }">
                <ul>
                	<li>
                    	<span>密码：</span>
                        <input class="hjx" name="company.loginpass" type="text"  value="${user.loginpass }">
                    </li>
                    <li>
                    	<span>联系方式：</span>
                        <input class="hjx" name="company.phone" type="text" value="${user.phone }">
                    </li>
                    <li>
                    	<span>公司图片：</span>
                        <input class="hjx" name="image" type="file" value="">
                    </li>
                    <li>
                    	<span>公司地址：</span>
                        <input class="hjx" name="company.caddr" type="text" value="${user.caddr }">
                    </li>
                    <li>
                    	<span>公司简介：</span>
                        <textarea name="company.cintro" rows="8" cols="60" >${user.cintro }</textarea>
                    </li>
                    <li>
                    	<div style="padding-left:190px;margin-top:30px;"><input type="submit" value="修	改" style="width:150px;" class="button_blue"/></div>
                    </li>
                </ul>
                </form>
                <br>
            </div>
        </div>
         <!-- 2end -->
         <!-- 3 -->
        <div class="person_r" id="right3" style="display: none" >
        	<div class="person_h">
            	<span>发布物流信息</span>
            </div>
            <div class="person_rmain" >
            	<form name="addtab" action="addPub" method="post" enctype="multipart/form-data" >
            	<input type="hidden" name="puborder.company.cid" value="${user.cid }">
				<table class="form">
					<tr>
						<td class="field">发货地址：</td>
						<td width=""><input class="hjx" type="text" name="puborder.staraddr"  value="" id="staraddr" onclick="openWindow('staraddr')"  onblur="checkcaddr('caddr')"/></td>
						
					</tr>
					<tr>
						<td class="field">到达地址：</td>
						<td width=""><input class="hjx" type="text" name="puborder.finishaddr"  value="" id="finishaddr" onclick="openWindow('finishaddr')"  onblur="checkcaddr('caddr')"/></td>
						
					</tr>
					<tr>
						<td class="field">截止日期：</td>
						<td width=""><input class="hjx" type="text" name="puborder.finishtime"  value="" id="staraddr" /></td>
						
					</tr>
					
					<tr>
						<td class="field">重量：</td>
						<td><input class="hjx" type="text" size="12" name="puborder.weight" id="loginpass" onfocus="tsxx('pwd')" onblur="checkpwd('pwd')" /></td>
						
					</tr>
					<tr>
						<td class="field">单位：</td>
						<td><select class="hjx" class="hjx1" id="edu" name="puborder.unit">
							<option value="吨">吨</option>
							<option value="公斤">公斤</option>
							</select></td>
						
					</tr>
					<tr>
						<td class="field">起步重：</td>
						<td><input class="hjx" type="text" size="22" name="puborder.starweight" onfocus="tsxx('pwd')" onblur="checkpwd2('pwd2')" /></td>
					</tr>
					<tr>
						<td class="field">货物图片：</td>
						<td><input class="hjx" type="file" class="text" name="image" /></td>
					</tr>
					<tr>
						<td class="field">规格：</td>
						<td><input class="hjx" type="text" size="22" name="puborder.space" id="carsize"  onfocus="tsxx('csize')" onblur="checkecsize('csize')"/>（重量）单位/平方米</td>
					</tr>
					<tr>
						<td class="field">货物类型：</td>
						<td><select class="hjx" style="width:200px" id="edu" name="puborder.goodtype.gtid">
							<s:iterator var="goodt" value="#attr.gtList">
						  		<option value="${goodt.gtid }">${goodt.gtname }</option>
						 	</s:iterator>
						</select></td>
					</tr>
					<tr>
						<td class="field">货物名称：</td>
						<td><input class="hjx" type="text" size="22" name="puborder.goodname"  id="ccload" onfocus="tsxx('cload')" onblur="checkcload('cload')" /></td>
					</tr>
					<tr>
						<td class="field">运费：</td>
						<td><input class="hjx" type="text" size="22" name="puborder.price" id="carnumber" onfocus="tsxx('cnumber')" onblur="checkcnumber('cnumber')" />元/（单位）重量</td>
					</tr>
					
					<tr>
						<td class="field">验证码：</td>
						<td><input class="hjx" class="text verycode" type="text" name="uyzm" onfocus="FocusItem(this)" onblur="CheckItem(this)" /><img id="yzm" src="" /><span><a href="javascript:changeimg()">看不清</a></span></td>
					</tr>
					<tr>
						<td></td>
						<td><label class="ui-blue"><input class="button_blue"  onclick=""  type="submit" value="发　布"></label></td>
					</tr>
				</table>
			</form>
			<br>
            </div>
        </div>
         <!-- 3end -->
          <!-- 4 -->
        <div class="person_r" id="right4" style="display: none" >
        	<div class="person_h">
            	<span>我发布的商品</span>
            </div>
            <div class="person_rmain" >
            	<table class="table table-bordered table-hover table-striped" width="700" border="1">
         <tbody>
           <tr  align="center">
             <td><strong>编号</strong></td>
             <td><strong>商品名</strong></td>
             <td><strong>发布日期</strong></td>
             <td><strong>结束日期</strong></td>
             <td><strong>剩余重量</strong></td>
              <td><strong>状态</strong></td>
             <td><strong>修改</strong></td>
           </tr>
           <s:iterator var="pub" value="#attr.user.puborders">
           <tr align="center">
             <td>${pub.pid }</td>
             <td>${pub.goodname }</td>
             <td>${pub.startime }</td>
             <td>${pub.finishtime }</td>
             <td>${pub.weight-pub.sale }${pub.unit}</td>
             <td><c:if test="${pub.status eq 2 }">下架</c:if><c:if test="${pub.status != 2 }">上线</c:if></td>
             <td><a href="findonePub?puborder.pid=${pub.pid }&type=update">编辑</a></td>
           </tr>
           <!-- javascript:updatepub(${pub.pid }) -->
           </s:iterator>
         </tbody>
       </table>
            </div>
        </div>
         <!-- 4end -->
          <!-- ing -->
        <div class="person_r" id="right5" style="display: none" >
        	<div class="person_h">
            	<span>进行中订单</span>
            </div>
            <div class="person_rmain" >
            	<table class="table table-bordered table-hover table-striped" width="700" border="1">
         <tbody>
           <tr  align="center">
             <td><strong>编号</strong></td>
             <td><strong>商品名</strong></td>
             <td><strong>发货地址</strong></td>
             <td><strong>到达地址</strong></td>
             <td><strong>预订重量</strong></td>
             <td><strong>预订时间</strong></td>
             <td><strong>订单状态</strong></td>
             <td><strong>接收订单</strong></td>
             <td><strong>取消订单</strong></td>
           </tr>
            <s:iterator var="pub" value="#attr.user.puborders">
            <s:iterator var="get" value="#pub.getorders">
            <c:if test="${get.status != '已完成'}">
           <tr align="center">
             <td>${get.gid }</td>
             <td>${get.puborder.goodname }</td>
             <td>${get.puborder.staraddr }</td>
             <td>${get.puborder.finishaddr }</td>
             <td>${get.weight }</td>
             <td>${get.time}</td>
             <td>${get.status}</td>
             <td>&nbsp<c:if test="${get.status != '货主接单' }"><a href="updateGet?getorder.gid=${get.gid }&getorder.status=3">接收</a></c:if></td>
             <td><a href="updateGet?getorder.gid=${get.gid }&getorder.status=2">取消</a></td>
           </tr>
           </c:if>
           </s:iterator>
           </s:iterator>
         </tbody>
       </table>
            </div>
        </div>
         <!-- ingend -->
         <!-- 6 -->
        <div class="person_r" id="right6" style="display: none" >
        	<div class="person_h">
            	<span>历史订单</span>
            </div>
            <div class="person_rmain" >
            	<table class="table table-bordered table-hover table-striped" width="700" border="1">
         <tbody>
           <tr  align="center">
             <td><strong>订单编号</strong></td>
             <td><strong>日期</strong></td>
             <td><strong>重量</strong></td>
             <td><strong>备注</strong></td>
             <td><strong>状态</strong></td>
             <td><strong>操作</strong></td>
           </tr>
            <s:iterator var="pub" value="#attr.user.puborders">
            <s:iterator var="get" value="#pub.getorders">
             <c:if test="${get.status == '已完成'}">
           <tr align="center">
             <td>${get.gid }</td>
             <td>${get.time }</td>
             <td>${get.weight }${get.puborder.unit }</td>
             <td>${get.beizhu }</td>
             <td>${get.status }</td>
             <td><a >详细</a></td>
           </tr>
           </c:if>
           </s:iterator>
           </s:iterator>
         </tbody>
       </table>
       <br>
            </div>
        </div>
         <!-- 6end -->
        
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
             <td><a href="deleteForum?forum.fid=${forum.fid }">删除</a></td>
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
