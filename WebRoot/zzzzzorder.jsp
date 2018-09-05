<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'order.jsp' starting page</title>
    
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
	
	<div id="top" class="l">
		<div id="logo"><a href=""><img src="styles/logo.jpg" alt=""></a></div>
		<div class="top-banner"><img src="styles/top-banner.jpg" alt=""></div>
		<div class="tel-w">
			<div class="find">
				<a href="" class="car"></a>&nbsp;&nbsp;<a href="" class="pro"></a>
			</div>
			<div class="tel">
				0759-88888888
			</div>
		</div>
		<div class="c"></div>
	</div>

	<div id="nav" class="l">
		<ul>
			<li><a href="">首页</a></li>
			<li><a href="">政策法规</a></li>
			<li><a href="">交邮合作</a></li>
			<li><a href="">物流资讯</a></li>
			<li><a href="">车源信息</a></li>
			<li><a href="">货源信息</a></li>
			<li><a href="">专线查询</a></li>
			<li><a href="">整车零租</a></li>
			<li><a href="">人力资源</a></li>
			<li><a href="">物流宝典</a></li>
			<li><a href="">企业展示</a></li>
			<li><a href="">宜城特色</a></li>

			<div class="c"></div>
		</ul>
	</div>

	<div id="tip" class="l">
		通知公告:有单了物流网（www.youdanle.com）  是公共信息平台，免费为企业产品宣传及形象展示  ，免费查看和发布车船货源和产品信息。
	</div>

	<div id="banner" class="l">
		<img src="styles/banner.png" alt="">
	</div>
	
	<!-- head end -->
	<div id="main" class="1">
	<DIV id=view class="main wrap">
<DIV class=intro>
<DIV class=lefter>

<H1>${findonepub.company.cname }</H1>
<DIV class=subinfo>发布日期${findonepub.startime }</DIV>
<DIV class=houseinfo style="float: left;">
<P>商品名称：<SPAN>${findonepub.goodname}</SPAN></P>
<P>剩余重量：<SPAN>${findonepub.weight-findonepub.sale}</SPAN></P>
<P>价       格：<SPAN>${findonepub.price}元/${findonepub.unit}</SPAN></P>
<P>规　　格：<SPAN>${findonepub.space}${findonepub.unit}/m<SUP>3</SUP></SPAN></P>
<P>起始地址：<SPAN>${findonepub.staraddr }——${findonepub.finishaddr }</SPAN></P>
<P>结束日期：<SPAN>${findonepub.finishtime}</SPAN></P>
<P>销       量：<SPAN>${findonepub.sale}</SPAN></P>
<P>联系方式：<SPAN>${findonepub.company.phone }</SPAN></P></DIV>
<div style="float: left; margin-left: 450px; position:absolute;left:-50px;"><img alt="" src="images/1.jpg" width="300" height="190"></div>
</DIV>
<DIV class=side>
<P><A class=bold href="公司详细"><img alt="" src="images/${findonepub.company.images }" width="160" height="50"></A></P>
<P>公司名称：<SPAN>${findonepub.company.cname }</SPAN></P>
<P>VIP认证：<SPAN>${findonepub.company.cvip }</SPAN></P>
<P>公司地址：<SPAN>${findonepub.company.caddr }</SPAN></P>
<P>手机号码：<SPAN>${findonepub.company.phone }</SPAN></P></DIV>
<DIV class=clear></DIV>
<DIV class=introduction>
<H2><SPAN><STRONG>编辑订单</STRONG></SPAN></H2>
<DIV class=content>
      <form action="addGet" method="post">
      <input type="hidden" name="getorder.car.cid" value="${user.cid }">
      <input type="hidden" name="getorder.puborder.pid" value="${findonepub.pid }">
      <input type="hidden" name="getorder.status" value="下单成功">
      <table width=1000px bordercolor="blue">
        <tr>
          <td width="20%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">起始地：</td>
          <td colspan="2" width="80%"><input class="hjx1" readonly="readonly" type="text" value="findonepub.staraddr" id="input10"/></td>
         
        </tr>
        <tr>
        <td width="20%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">到达地：</td>
          <td  colspan="2" width="80%"><input class="hjx1" readonly="readonly" type="text" value="findonepub.finishaddr" id="input14" /></td>
        </tr>
        <tr>
        <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">预订重量：</td>
          <td><input class="hjx1" type="text" name="getorder.weight" id="input1-1" class="span1-1"  /></td>
        	<td>提示语</td>
        </tr>
        </table>
        <table width=1000px>
        <tr>
          
          <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">送货费：</td>
          <td><input class="hjx1" readonly="readonly" type="text" value="${findonepub.price}元/${findonepub.unit}" id="input1-1" class="span1-1"  /></td>
           <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">预计赚得：</td>
          <td>js方法提示价格</td>
          
        </tr>
       	<tr>
          <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">备注：</td>
          <td colspan="5" nowrap="nowrap"><textarea name="getorder.beizhu" rows="6" cols="100" ></textarea></td>
          
          </tr>
         
      	<tr>
      	<td colspan="5" align="right"></td><td><input type="submit" value="提交订单" style="width:150px;" class="button_blue"/></td>
      	</tr>
      </table>
   	 </form>
</DIV></DIV></DIV></DIV>
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