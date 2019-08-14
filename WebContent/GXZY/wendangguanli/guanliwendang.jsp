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

        <li class="layui-nav-item"><a href="wendangleibie.jsp">文档类别</a></li>
        <li class="layui-nav-item"><a href="guanliwendang.jsp">管理文档</a></li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 80px;">
      <h1>管理文档</h1>
        <table class="layui-table">
            <thead>
                <tr>
                  <th>id</th>
                  <th>姓名</th>
                  <th>类型</th>
                  <th>管理文档</th>
                </tr>
            </thead>
            <tr>
              <td>1</td>
              <td>梁朝伟</td>
              <td>文档</td>
              <td>
                  <button class="layui-btn">查看文档</button>
                  <button class="layui-btn">删除文档</button>
              </td>
            </tr>
              <td>2</td>
              <td>张国荣</td>
              <td>文档</td>
              <td>
                  <button class="layui-btn">查看文档</button>
                  <button class="layui-btn">删除文档</button>
              </td>
            </tr>
              <td>3</td>
              <td>张学友</td>
              <td>文档</td>
              <td>
                  <button class="layui-btn">查看文档</button>
                  <button class="layui-btn">删除文档</button>
              </td>
            </tr>
    
    </div>
  </div>
  
  <div class="layui-footer">

    
  </div>
</div>

</body>
</html>