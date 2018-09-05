<%@page import="java.text.DateFormat"%>
<%@page import="org.aspectj.weaver.patterns.FormalBinding"%>
<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/admin/";
%>

	<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 2.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <link rel="stylesheet" type="text/css" href="Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="Css/style.css" />
    <script type="text/javascript" src="Js/jquery.js"></script>
    <script type="text/javascript" src="Js/jquery.sorted.js"></script>
    <script type="text/javascript" src="Js/bootstrap.js"></script>
    <script type="text/javascript" src="Js/ckform.js"></script>
    <script type="text/javascript" src="Js/common.js"></script>
    <script type="text/javascript" src="js/showdate.js"></script>
    <style type="text/css">
        body {font-size: 20px;
             padding-bottom: 40px;
             background-color:#e9e7ef;
             font-size:17px;
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
<form action="../addNew" method="post" enctype="multipart/form-data">
<table class="table table-bordered table-hover definewidth m10" style="margin-left:3%;margin-top:2%;">
    <tr>
        <td width="10%" class="tableleft">公告标题</td>
        <td><input type="text" name="n.ntitle" style="height: 41px; width: 546px"/></td>
     
    </tr>
    <tr>
        <td class="tableleft">图片</td>
        <td>  <input type="file"  name="image" style="height: 41px; width: 546px"/>
         </td>
    </tr>
    <tr>
        <td class="tableleft">内容</td>
        <td><textarea style="height: 80px; width: 546px" name="n.ncontent"></textarea></td>
    </tr> 
    <tr>
        <td class="tableleft">发布时间</td>
        <td style="height: 46px; "> <div style="margin:0 auto;">
	             <input type="text"  name="n.ndate" id="time1" value="<%=new SimpleDateFormat("YYYY-MM-dd").format(new Date()) %>" onClick="return Calendar('time1');" class="text_time"/>
             </div> 
        </td>
    </tr> 
      
    <tr>
        <td class="tableleft"></td>
        <td>
            <input  style="margin-left:180px;"type="submit" class="btn btn-primary" value="发布" >&nbsp;&nbsp;<button type="button" class="btn btn-primary"><a href="allnew.jsp">返回列表</a></button>
        </td>
    </tr>
</table>
</form>
</body>
</html>
<script type="text/javascript">
function jump(){
 window.location.href="placardQuery.html";
}
</script>