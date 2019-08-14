<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
    <jsp:useBean id="db" class="com.my.SQL.Sql_data"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>高校人力资源管理系统</title>
  <link rel="stylesheet" href="..\layui\layui\css\layui.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">高校人力资源管理系统</div>
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href="..\yuangongguanli\yuangongxinxichaxun.jsp">员工管理</a></li>
      <li class="layui-nav-item"><a href="..\xinziguanli\xinzifafang.jsp">薪资管理</a></li>
      <li class="layui-nav-item"><a href="..\wendangguanli\wendangleibie.jsp">文档管理</a></li>
      <li class="layui-nav-item"><a href="..\zuzhijigouguanli\jigouguanli.jsp">组织机构管理</a></li>
      <li class="layui-nav-item"><a href="..\kaoqinguanli\renyuankaoqinliebiao.jsp">考勤管理</a></li>
      <li class="layui-nav-item"><a href="..\zhaopinguanli\shenhejihua.jsp">招聘管理</a></li>
      <li class="layui-nav-item"><a href="..\renyuanyidong\zhiwubiandongguanli.jsp">职务变动管理</a></li>
      <li class="layui-nav-item"><a href="">系统管理</a></li>

      </li>
    </ul>

  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">

      <ul class="layui-nav layui-nav-tree"  lay-filter="test">

        <li class="layui-nav-item"><a href="renyuankaoqinliebiao.jsp">人员考勤列表</a></li>
        <li class="layui-nav-item"><a href="wodekaoqin.jsp">我的考勤</a></li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 80px;">
      <h1>我的考勤</h1>
        <table class="layui-table">
            <thead>
                <tr>
                  <th style="font-size: 30px;">id</th>
                  <th style="font-size: 30px;">姓名</th>
                  <th style="font-size: 30px;">考勤天数</th>
                  <th style="font-size: 30px;">缺勤天数</th>
                </tr>
            </thead>
            <tr>
              <td style="font-size: 30x;">001</td>
              <td style="font-size: 30px;">刘德华</td>
              <td style="font-size: 30px;">99</td>
              <td style="font-size: 30px;">0</td>
              </tr>
              </table>




 
    
    </div>
  </div>
  
  <div class="layui-footer">

   
  </div>
</div>

</body>
</html>