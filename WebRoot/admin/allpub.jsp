<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 2.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<link rel="stylesheet" type="text/css" href="Css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="Css/bootstrap-responsive.css" />
<link rel="stylesheet" type="text/css" href="Css/style.css" />
<script type="text/javascript" src="Js/jquery2.js"></script>
<script type="text/javascript" src="Js/jquery2.sorted.js"></script>
<script type="text/javascript" src="Js/bootstrap.js"></script>
<script type="text/javascript" src="Js/ckform.js"></script>
<script type="text/javascript" src="Js/common.js"></script>

<style type="text/css">
body {font-size: 20px;
	padding-bottom: 40px;
	background-color: #e9e7ef;
}

.sidebar-nav {
	padding: 9px 0;
}

@media ( max-width : 980px) {
	/* Enable use of floated navbar text */
	.navbar-text.pull-right {
		float: none;
		padding-left: 5px;
		padding-right: 5px;
	}
}
</style>
</head>
<body>
	<form class="form-inline definewidth m20" action="#" method="get">
		 <font color="#777777"><strong>货源信息：</strong></font> 
    <input type="text" name="menuname" id="menuname"class="abc input-default" placeholder="" value="">&nbsp;&nbsp; 
    <button type="submit" class="btn btn-primary">查询</button>
	</form>
	<table class="table table-bordered table-hover definewidth m10">
		<thead>
			<tr>
			    <th>发布者</th>
				<th>起始地址</th>
			    <th>到底地址</th>
				<th>发布日期</th>
				<th>截至日期</th>
				<th>状态</th>
				<th>删除</th>
			</tr>
		</thead>

		<s:iterator value="#attr.pubList" var="pub" >
        <tr>
                <td><a href="../findonePub?puborder.pid=${pub.pid }&type=admin">${pub.company.cname }</a></td>
                <td>${pub.staraddr}</td>
                <td>${pub.finishaddr}</td>
                <td>${pub.startime }</td>
                <td>${pub.finishtime }</td>
                <td><c:if test="${pub.status == '2' }">下架</c:if><c:if test="${pub.status != '2' }">上线</c:if></td>
				<td><c:if test="${pub.status != '2' }"><a href="../updatePub?puborder.pid=${pub.pid }&type=admin">下架</a></c:if>
					<c:if test="${pub.status == '2' }"><a href="../updatePub?puborder.pid=${pub.pid }&type=admin">上线</a></c:if>
				</td>
        </tr>
          </s:iterator>


	</table>

	</body>
</html>