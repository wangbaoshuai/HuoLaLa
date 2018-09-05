<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
function checkcaddr(op){
	var tsobj=document.getElementById(op);
	var reg=/^.+$/;
	var cloadstr=document.getElementById("comaddr").value;
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
checkcaddr("caddr");checkphone("phone");checkpwd("pwd");checkpwd("pwd2");checkyhxm("zsxm");checkyhm("yhm");
if(checkcaddr("caddr")&&checkphone("phone")&&checkpwd("pwd")&&checkpwd("pwd2")&&checkyhxm("zsxm")&&checkyhm("yhm")){
	document.tab.submit();
}
	else 
	{return false;}
}
var i=10;
function changeimg(){
  	document.getElementById("yzm").src="yzm.jsp?data="+(i++);
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
	<iframe src="head.jsp"  width="100%" height="235" scrolling="no" frameborder="0" ></iframe>
	<!-- head end -->
	<div id="main" class="1" style="margin-left: 440px">
	<form name="tab" action="addcomUser.action" method="post"  enctype="multipart/form-data" >
				<table class="form">
					<tr>
						<td class="field">公司名：</td>
						<td width=""><input class="hjx" type="text" size="22" id="cname" name="company.cname" onfocus="tsxx('zsxm')" onblur="checkyhxm('zsxm')" /></td>
						<td ><div class="ts" id="zsxm">请输姓名</div></td>
					</tr>
					<tr>
						<td class="field">用户名：</td>
						<td width=""><input class="hjx" type="text" size="22" name="company.loginname" id="loginname" onfocus="tsxx('yhm')" onblur="checkyhm('yhm')" /></td>
						<td><div class="ts" id="yhm">1、首字母不能为数字<br />2、请输入数字、字母、下划线</div></td>
					</tr>
					<tr>
						<td class="field">密码：</td>
						<td><input class="hjx" type="password" size="22" name="company.loginpass" id="loginpass" onfocus="tsxx('pwd')" onblur="checkpwd('pwd')" /></td>
						<td><div class="ts" id="pwd">密码长度为6-16位</div></td>
					</tr>
					<tr>
						<td class="field">确认密码：</td>
						<td><input class="hjx" type="password" size="22" name="loginpass2" onfocus="tsxx('pwd')" onblur="checkpwd2('pwd2')" /></td>
						<td><div class="ts" id="pwd2">请再次输入密码</div></td>
					</tr>
					<tr>
						<td class="field">公司图片：</td>
						<td><input class="hjx" type="file" class="text" name="image" /></td>
						<td></td>
					</tr>
					<tr>
						<td class="field">联系方式：</td>
						<td><input class="hjx" type="text" size="22" name="company.phone" id="cphone" onfocus="tsxx('phone')" onblur="checkphone('phone')" /></td>
						<td><div class="ts" id="phone">请输入11位有效手机号</div></td>
					</tr>
					<tr>
						<td class="field">公司所在地：</td>
						<td><input class="hjx" type="text" id="comaddr" name="company.caddr" onclick="openWindow('comaddr')"  onblur="checkcaddr('caddr')" value="" /></td>
						<td><div class="ts" id="caddr"></div></td>
					</tr>
					<tr>
						<td class="field">公司简介：</td>
						<td><textarea name="company.cintro" rows="8" cols="60" ></textarea></td>
						<td></td>
					</tr>
					<tr>
						<td class="field">验证码：</td>
						<td><input class="hjx" class="text verycode" type="text" name="uyzm" onfocus="FocusItem(this)" onblur="CheckItem(this);" /><img id="yzm" src="yzm.jsp" /><span><a href="javascript:changeimg()">看不清</a></span></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td><label class="ui-blue"><input class="button_blue" onclick="checkall()" type="button" value="注　册"></label></td>
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
