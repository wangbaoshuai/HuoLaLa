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
    <link rel="stylesheet" type="text/css" href="Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="Css/style.css" />
    <script type="text/javascript" src="Js/jquery2.js"></script>
    <script type="text/javascript" src="Js/jquery2.sorted.js"></script>
    <script type="text/javascript" src="Js/bootstrap.js"></script>
    <script type="text/javascript" src="Js/ckform.js"></script>
    <script type="text/javascript" src="Js/common.js"></script>

    <style type="text/css">
        body {font-size: 20px;
            padding-bottom: 40px;
            background-color:#e9e7ef;
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
<body>
<form class="form-inline definewidth m20" action="#" method="get">
    <font color="#777777"><strong>请输入用户名称：</strong></font>
    <input type="text" name="menuname" id="menuname"class="abc input-default" placeholder="" value="">&nbsp;&nbsp; 
    <button type="submit" class="btn btn-primary">查询</button>&nbsp;&nbsp; 
</form>
<table class="table table-bordered table-hover definewidth m10">
    <thead>
 
    <tr>
	    <th>编号</th>
           <th>商品名</th>
           <th>发货地址</th>
           <th>到达地址</th>
           <th>预订重量</th>
           <th>预订时间</th>
           <th>查看</th>
    </tr>
    </thead>
	     
        <s:iterator var="get" value="#attr.getList">
            <c:if test="${get.status  ==  '已完成'}">
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
       </table>

</body>
</html>
<script>
    $(function () {
        

		$('#addnew').click(function(){

				window.location.href="goodsAdd.html";
		 });


    });
	
</script>