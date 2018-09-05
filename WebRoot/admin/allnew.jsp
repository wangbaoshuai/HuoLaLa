<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 2.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title></title>
     <meta name="description" content="Creating Modal Window with Twitter Bootstrap">
<link href="/twitter-bootstrap/twitter-bootstrap-v2/docs/assets/css/bootstrap.css" rel="stylesheet"> 
	<link rel="stylesheet" type="text/css" href="Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="Css/style.css" />
    <script type="text/javascript" src="Js/jquery2.js"></script>
    <script type="text/javascript" src="Js/jquery2.sorted.js"></script>
    <script type="text/javascript" src="Js/bootstrap.js"></script>
    <script type="text/javascript" src="Js/ckform.js"></script>
    <script type="text/javascript" src="Js/common.js"></script>

    <style type="text/css">
        body {
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
    <font color="#33ccff"><strong>公告标题：</strong></font>
    <input type="text" name="menuname" id="menuname"class="abc input-default" placeholder="" value="">&nbsp;&nbsp; 
    <button type="submit" class="btn btn-primary">查询</button>&nbsp;&nbsp; <button onclick="location.href='addnew.jsp'" type="button" class="btn btn-success" id="addnew">添加公告</button>
</form>
<table class="table table-bordered table-hover definewidth m10">
    <thead>
    <tr>
        <th>公告标题</th>
        <th>发布时间</th>
        <th>修改</th>
        <th>删除</th>
    </tr>
    </thead>
        <s:iterator value="#attr.newList" var="n" >
        <tr>
                <td><a href="../findoneNew?n.nid=${n.nid}">${n.ntitle}</a></td>
                <td>${n.ndate}</td>
                <td><A href="../findoneNew?type=admin&n.nid=${n.nid}">编辑</A></td>
				<td><a href="../deleteNew?n.nid=${n.nid}">删除</a></td>
        </tr>
          </s:iterator>
           
       
       </table>

</body>
</html>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap-tooltip.js"></script>
<script src="js/bootstrap-popover.js"></script>
<script>
$(function ()
{ $("#xiangqing").popover();
});
</script>
