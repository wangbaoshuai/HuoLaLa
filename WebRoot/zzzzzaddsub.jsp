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
<script type="text/javascript">
function checkyhxm(op){
	var tsobj=document.getElementById(op);
	var getyhxm=document.getElementById("cname").value;
	var reg=/^[\u4e00-\u9fa5]+$/;
	if(!reg.test(getyhxm)){
		
		tsobj.innerHTML="请输入汉字";
		tsobj.className="cw";
		return false;
		}
	tsobj.innerHTML="输入正确";
	tsobj.className="cg";
	return true;
	}

function checkyhm(op){
	
	var tsobj=document.getElementById(op);
	
	var getyhm=document.getElementById("loginname").value;
	var firstchar=getyhm.charAt(0);
	var firstreg=/^\d?$/;
	if(getyhm==""){
		tsobj.innerHTML="不能为空";
		tsobj.className="cw";
		return false;
		}
	if(firstreg.test(firstchar)){
		tsobj.innerHTML="首字母不能为数字";
		tsobj.className="cw";
		return false;
		}
	var reg=/^\w+$/;
	if(!reg.test(getyhm)){
		tsobj.innerHTML="只能包含数字、字母、下划线";
		tsobj.className="cw";
		return false;
		}
	tsobj.innerHTML="输入正确";
	tsobj.className="cg";
	return true;
	}
function checkpwd(op){
	var tsobj=document.getElementById(op);
	var pwdstr=document.getElementById("loginpass").value;
	if(pwdstr.length>16||pwdstr.length<6){
		tsobj.innerHTML="密码长度为6-16位"
		tsobj.className="cw";
		return false;
		}
	tsobj.innerHTML="输入正确";
	tsobj.className="cg";
	return true;

	}
function checkpwd2(op){
	var tsobj=document.getElementById(op);
	var pwdstr=document.getElementById("loginpass").value;
	var pwdstr2=document.tab.loginpass2.value;
	if(pwdstr!=pwdstr2){
		tsobj.innerHTML="密码不一致"
		tsobj.className="cw";
		return false;
		}
	tsobj.innerHTML="输入正确";
	tsobj.className="cg";
	return true;
	}
function checkphone(op){
	var tsobj=document.getElementById(op);
	var reg=/^1\d{10}$/;
	var phonestr=document.getElementById("cphone").value;
	if(!reg.test(phonestr)){
		tsobj.innerHTML="格式不对";
		tsobj.className="cw";
		return false;
		}
	tsobj.innerHTML="输入正确";
	tsobj.className="cg";
	return true;
	}
function checkcnumber(op){
	var tsobj=document.getElementById(op);
	var reg=/^[\u4e00-\u9fa5]\-\d{5}$/;
	var cnumberstr=document.getElementById("carnumber").value;
	if(!reg.test(cnumberstr)){
		tsobj.innerHTML="格式不对,请输入“京A-11111”格式";
		tsobj.className="cw";
		return false;
		}
	tsobj.innerHTML="输入正确";
	tsobj.className="cg";
	return true;
}
function checkecsize(op){
	var tsobj=document.getElementById(op);
	var reg=/^\d+\.?\d{0,2}$/;
	var cloadstr=document.getElementById("carsize").value;
	if(!reg.test(cloadstr)){
		tsobj.innerHTML="格式不对";
		tsobj.className="cw";
		return false;
		}
	tsobj.innerHTML="输入正确";
	tsobj.className="cg";
	return true;
}
function checkcload(op){
	var tsobj=document.getElementById(op);
	var reg=/^\d+\.?\d{0,2}$/;
	var cloadstr=document.getElementById("ccload").value;
	if(!reg.test(cloadstr)){
		tsobj.innerHTML="格式不对";
		tsobj.className="cw";
		return false;
		}
	tsobj.innerHTML="输入正确";
	tsobj.className="cg";
	return true;
}
function checkcaddr(op){
	var tsobj=document.getElementById(op);
	var reg=/^.+$/;
	var cloadstr=document.getElementById("caraddr").value;
	if(!reg.test(cloadstr)){
		tsobj.innerHTML="地址不能为空";
		tsobj.className="cw";
		return false;
		}
	tsobj.innerHTML="输入正确";
	tsobj.className="cg";
	return true;
}
function tsxx(op){
	
	var tsobj=document.getElementById(op);
	tsobj.style.display="block";
	}

function openWindow( op ){
    	var address=window.showModalDialog("ditu.html","","dialogWidth=750px;dialogHeight=650px");
	 	document.getElementById(op).value=address;	
	}
function checkall(){
checkcload("cload");checkcaddr("caddr");checkphone("phone");checkpwd("pwd");checkpwd("pwd2");checkecsize("csize");checkcnumber("cnumber");checkyhxm("zsxm");checkyhm("yhm");
if(checkcload("cload")&&checkcaddr("caddr")&&checkphone("phone")&&checkpwd("pwd")&&checkpwd("pwd2")&&checkecsize("csize")&&checkcnumber("cnumber")&&checkyhxm("zsxm")&&checkyhm("yhm")){
	document.tab.submit();
}
	else 
	{return false;}
}
</script>


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
	<center>
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
	</center>
	<!-- head end -->
	<div id="main" class="1" style="margin-left: 440px">
	<form name="tab" action="addPub" method="post" enctype="multipart/form-data" >
				<table class="form">
					<tr>
						<td class="field">发货地址：</td>
						<td width=""><input class="hjx" type="text" name="car.caddr"  value="" id="staraddr" onclick="openWindow('staraddr')"  onblur="checkcaddr('caddr')"/></td>
						<td ><div class="ts" id="zsxm">请输姓名</div></td>
					</tr>
					<tr>
						<td class="field">到达地址：</td>
						<td width=""><input class="hjx" type="text" name="car.caddr"  value="" id="finishaddr" onclick="openWindow('finishaddr')"  onblur="checkcaddr('caddr')"/></td>
						<td><div class="ts" id="yhm">1、首字母不能为数字<br />2、请输入数字、字母、下划线</div></td>
					</tr>
					<tr>
						<td class="field">重量：</td>
						<td><input class="hjx" type="password" size="12" name="car.loginpass" id="loginpass" onfocus="tsxx('pwd')" onblur="checkpwd('pwd')" /></td>
						<td></td>
					</tr>
					<tr>
						<td class="field">单位：</td>
						<td><select class="hjx" id="edu" name="puborder.unit">
							<option value="吨">吨</option>
							<option value="公斤">公斤</option>
							</select></td>
						<td>
						</td>
					</tr>
					<tr>
						<td class="field">起步重：</td>
						<td><input class="hjx" type="password" size="22" name="loginpass2" onfocus="tsxx('pwd')" onblur="checkpwd2('pwd2')" /></td>
						<td>
						</td>
					</tr>
					<tr>
						<td class="field">货物图片：</td>
						<td><input class="hjx" type="file" class="text" name="image" /></td>
						<td></td>
					</tr>
					<tr>
						<td class="field">规格：</td>
						<td><input class="hjx" type="text" size="22" name="car.csize" id="carsize"  onfocus="tsxx('csize')" onblur="checkecsize('csize')"/>（重量）单位/平方米</td>
						<td></td>
					</tr>
					<tr>
						<td class="field">货物类型：</td>
						<td><select class="hjx" id="edu" name="puborder.goodtype.gtid">
							<s:iterator var="goodt" value="#attr.gtList">
						  		<option value="${goodt.gtid }">${goodt.gtname }</option>
						 	</s:iterator>
						</select></td>
						<td></td>
					</tr>
					<tr>
						<td class="field">货物名称：</td>
						<td><input class="hjx" type="text" size="22" name="car.cload"  id="ccload" onfocus="tsxx('cload')" onblur="checkcload('cload')" /></td>
						<td><div class="ts" id="cload">请输入数字，例如40，1.25</div></td>
					</tr>
					<tr>
						<td class="field">价格：</td>
						<td><input class="hjx" type="text" size="22" name="car.cnumber" id="carnumber" onfocus="tsxx('cnumber')" onblur="checkcnumber('cnumber')" /></td>
						<td><div class="ts" id="cnumber">请输入"京A-11111"格式</div></td>
					</tr>
					
					<tr>
						<td class="field">验证码：</td>
						<td><input class="hjx" class="text verycode" type="text" name="uyzm" onfocus="FocusItem(this)" onblur="CheckItem(this)" /><img id="yzm" src="" /><span><a href="javascript:changeimg()">看不清</a></span></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td><label class="ui-blue"><input class="button_blue"  onclick=""  type="submit" value="发　布"></label></td>
						<td></td>
					</tr>
				</table>
			</form>
	</div>
	<!-- 底部 -->
	<center>
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
	</center>
  </body>
</html>
