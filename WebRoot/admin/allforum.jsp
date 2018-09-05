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
      <font color="#777777"><strong>车牌号：</strong></font>
    <input type="text" name="menuname" id="menuname"class="abc input-default" placeholder="" value="">&nbsp;&nbsp; 
    <button type="submit" class="btn btn-primary">查询</button> 
	
</form>
<table class="table table-bordered table-hover definewidth m10">
    <thead>
    <tr>
         <th>帖子标题</th>
        <th>发帖人</th>
        <th>发布时间</th>
        <th>操作</th>
    </tr>
    </thead>
         <s:iterator var="f" value="#attr.forumListByPage" >
        <tr>
                
                <td><a href="../findoneForum?forum.fid=${f.fid }&type=admin">${f.ftitle }</a></td>
				<td><a href="studentdetail.html"><c:if test="${not empty f.company }">${f.company.cname}</c:if><c:if test="${not empty f.car }">${f.car.cname}</c:if></a></td>
                <td>${f.fdate }</td>
                <td><a href="../deleteForum.action?forum.fid=${f.fid}&type=admin"  >删除</a></td>
               
        </tr>
         </s:iterator> 
           
       
       </table>

</body>
</html>