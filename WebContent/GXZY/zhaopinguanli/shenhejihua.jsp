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
  <!--     <li class="layui-nav-item"><a href="..\wendangguanli\wendangleibie.jsp">文档管理</a></li> -->
      <li class="layui-nav-item"><a href="..\zuzhijigouguanli\jigouguanli.jsp">组织机构管理</a></li>
    <!--   <li class="layui-nav-item"><a href="..\kaoqinguanli\renyuankaoqinliebiao.jsp">考勤管理</a></li> -->
      <li class="layui-nav-item"><a href="..\zhaopinguanli\shenhejihua.jsp">招聘管理</a></li>
      <li class="layui-nav-item"><a href="..\renyuanyidong\zhiwubiandongguanli.jsp">职务变动管理</a></li>
   <!--    <li class="layui-nav-item"><a href="">系统管理</a></li> -->

      </li>
    </ul>

  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">

        <li class="layui-nav-item"><a href="shenhejihua.jsp">审核计划</a></li>
        <li class="layui-nav-item"><a href="xiafazhaopintongzhi.jsp">下发招聘通知</a></li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <div style="padding: 80px;">
    <h1>审核计划</h1>
      <table class="layui-table">
        <thead>
            <tr>
              <th>姓名</th>
              <th>性别</th>
              <th>年龄</th>
              <th>学历</th>
              <th></th>
            </tr>
        </thead>
        <tr>
          <td>梁朝伟</td>
          <td>男</td>
          <td>40</td>
          <td>博士</td>
          <td>
              <button class="layui-btn" onclick="alert('招聘成功')">招聘</button>
          </td>
        </tr>
        <tr>
          <td>张国荣</td>
          <td>男</td>
          <td>40</td>
          <td>硕士</td>
          <td>
              <button class="layui-btn" onclick="alert('招聘成功')">招聘</button>
          </td>
        </tr>
        <tr>
          <td>刘德华</td>
          <td>男</td>
          <td>40</td>
          <td>研究生</td>
          <td>
              <button class="layui-btn" onclick="alert('招聘成功')">招聘</button>
          </td>
        </tr>
        <tr>
          <td>古天乐</td>
          <td>男</td>
          <td>40</td>
          <td>博士后</td>
          <td>
              <button class="layui-btn" onclick="alert('招聘成功')">招聘</button>
          </td>
        </tr>
        <tr>
          <td>林青霞</td>
          <td>女</td>
          <td>35</td>
          <td>博士</td>
          <td>
              <button class="layui-btn" onclick="alert('招聘成功')">招聘</button>
          </td>
        </tr>


      </table>
    
    </div>
  </div>
  
  <div class="layui-footer">

  </div>
</div>

</body>
</html>