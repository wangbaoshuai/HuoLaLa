<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <th>车牌号</th>
        <th>登录帐号</th>
        <th>联系方式</th>
        <th>车辆认证</th>
        <th>状态</th>
        <th>查看</th>
    </tr>
    </thead>
        <s:iterator value="#attr.carList" var="car" >
        <tr>
                <td><a href="../findoneCar?car.loginname=${car.loginname }">${car.cnumber}</a></td>
                <td>${car.loginname }</td>
                <td>${car.phone}</td>
                <td>${car.cvip}</td>
                <td><c:if test="${car.cstatus == '2' }">冻结</c:if><c:if test="${car.cstatus != '2' }">正常</c:if></td>
				<td><c:if test="${car.cstatus != '2' }"><a href="../updateCar?car.loginname=${car.loginname }">冻结</a></c:if>
					<c:if test="${car.cstatus == '2' }"><a href="../updateCar?car.loginname=${car.loginname }">解冻</a></c:if>
				</td>
        </tr>
          </s:iterator>
           
       
       </table>

</body>
</html>