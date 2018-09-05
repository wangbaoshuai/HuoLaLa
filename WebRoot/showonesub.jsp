<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showonesub.jsp' starting page</title>
    
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
	<DIV id=view class="main wrap">
<DIV class=intro>
<DIV class=lefter>

<H1>${findonepub.company.cname }</H1>
<DIV class=subinfo>发布日期${findonepub.startime }</DIV>
<DIV class=houseinfo style="float: left;">
<P>商品名称：<SPAN>${findonepub.goodname}</SPAN></P>
<P>剩余重量：<SPAN>${findonepub.weight-findonepub.sale}${findonepub.unit}</SPAN></P>
<P>价       格：<SPAN>${findonepub.price}元/${findonepub.unit}</SPAN></P>
<P>起步重量：<SPAN>${findonepub.starweight}${findonepub.unit}</SPAN></P>
<P>规　　格：<SPAN>${findonepub.space}${findonepub.unit}/m<SUP>3</SUP></SPAN></P>
<P>起始地址：<SPAN>${findonepub.staraddr }——${findonepub.finishaddr }</SPAN></P>
<P>结束日期：<SPAN>${findonepub.finishtime}</SPAN></P>
<P>销       量：<SPAN>${findonepub.sale}</SPAN></P>
<P>联系方式：<SPAN>${findonepub.company.phone }</SPAN></P></DIV>
<div style="float: left; margin-left: 450px; position:absolute;left:260px;"><img alt="" src="images/${findonepub.images }" width="300" height="190">
<div style="padding-left:75px;margin-top:95px;"><input type="button" id="ljxd" value="立即下单" onclick="ljxd()" style="width:150px;" class="button_blue"/></div>
</div>
<script type="text/javascript">
function ljxd(){
	document.getElementById("ljxd").style.display='none';
	document.getElementById("gsjj").style.display='none';
	document.getElementById("xiadan").style.display='block';
}
</script>
</DIV>
<DIV class=side>
<P><A class=bold href="公司详细"><img alt="" src="images/${findonepub.company.images }" width="160" height="50"></A></P>
<P>公司名称：<SPAN>${findonepub.company.cname }</SPAN></P>
<P>VIP认证：<SPAN>${findonepub.company.cvip }</SPAN></P>
<P>公司地址：<SPAN>${findonepub.company.caddr }</SPAN></P>
<P>手机号码：<SPAN>${findonepub.company.phone }</SPAN></P></DIV>
<DIV class=clear></DIV>
<!-- di1 -->
<DIV id="gsjj" class=introduction>
<H2><SPAN><STRONG>货源公司信息</STRONG></SPAN></H2>
<DIV class=content>
<P>${findonepub.company.cintro }</P></DIV></DIV>
<!-- di2 -->
<DIV id="xiadan" class=introduction style="display: none;">
<H2><SPAN><STRONG>编辑订单</STRONG></SPAN></H2>
<DIV class=content>
      <form name="addget" action="addGet.action" method="post">
      <input type="hidden" name="getorder.car.cid" value="${user.cid }">
      <input type="hidden" name="getorder.puborder.pid" value="${findonepub.pid }">
      <input type="hidden" name="getorder.status" value="下单成功">
      <table width=1000px bordercolor="blue">
        <tr>
          <td width="20%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">起始地：</td>
          <td colspan="2" width="80%"><input class="hjx1" readonly="readonly" type="text" value="${findonepub.staraddr}" id="input10"/></td>
         
        </tr>
        <tr>
        <td width="20%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">到达地：</td>
          <td  colspan="2" width="80%"><input class="hjx1" readonly="readonly" type="text" value="${findonepub.finishaddr}" id="input14" /></td>
        </tr>
        <tr>
        <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">预订重量：</td>
          <td><input class="hjx1" type="text" name="getorder.weight" id="weightin" class="span1-1"  onblur="checkweight('weight')"  /><span id="weight"></span></td>
        	<td></td>
        </tr>
        </table>
        <script type="text/javascript">
        function checkweight(op){
        	var ts =document.getElementById("weight");
        	var weightin =document.getElementById("weightin").value;
        	if(${findonepub.starweight}>weightin){
        		ts.innerHTML="输入的重量小于起步重量";
        		return false;
        	}
        	if(${findonepub.weight-findonepub.sale}<weightin){
        		ts.innerHTML="输入的重量大于剩余重量";
        		return false;
        	}
        	if(${user.cload}<weightin){
        		ts.innerHTML="输入的重量大于本车载重量";
        		return false;
        	}
        	var tatol=document.getElementById("tatol");
        	tatol.innerHTML=weightin*${findonepub.price}+"元";
        	ts.innerHTML="输入正确";
        	return true;
        }
        </script>
        <table width=1000px>
        <tr>
          
          <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">送货费：</td>
          <td><input class="hjx1" readonly="readonly" type="text" value="${findonepub.price}元/${findonepub.unit}" id="input1-1" class="span1-1"  /></td>
           <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">预计赚得：</td>
          <td><span id="tatol"></span></td>
          
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
</DIV></DIV>
<!-- 2end -->


</DIV></DIV>
	</div>
	<!-- 底部 -->
	
<iframe src="foot.jsp"  width="100%" height="165" scrolling="no" frameborder="0" target="_parent" ></iframe>

  </body>
</html>
