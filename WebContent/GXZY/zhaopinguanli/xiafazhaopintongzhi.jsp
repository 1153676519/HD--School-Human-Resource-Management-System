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
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href="..\yuangongguanli\yuangongxinxichaxun.jsp">员工管理</a></li>
      <li class="layui-nav-item"><a href="..\xinziguanli\xinzifafang.jsp">薪资管理</a></li>
    <!--   <li class="layui-nav-item"><a href="..\wendangguanli\wendangleibie.jsp">文档管理</a></li> -->
      <li class="layui-nav-item"><a href="..\zuzhijigouguanli\jigouguanli.jsp">组织机构管理</a></li>
     <!--  <li class="layui-nav-item"><a href="..\kaoqinguanli\renyuankaoqinliebiao.jsp">考勤管理</a></li> -->
      <li class="layui-nav-item"><a href="..\zhaopinguanli\shenhejihua.jsp">招聘管理</a></li>
      <li class="layui-nav-item"><a href="..\renyuanyidong\zhiwubiandongguanli.jsp">职务变动管理</a></li>
  <!--     <li class="layui-nav-item"><a href="">系统管理</a></li> -->

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

    <div class="bg" style="padding: 50px;">

     <h1>招聘要求</h1>
     <form class="layui-form">

        <div >
          <div class="layui-form-item">
            <label class="layui-form-label">招聘的职位</label>
            <div class="layui-input-inline">
              <input type="text" name="username" lay-verify="required" placeholder="请输入招聘的职位" autocomplete="off" class="layui-input">
            </div>
          </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-inline">
              <label class="layui-form-label">年龄范围</label>
              <div class="layui-input-inline" style="width: 100px;">
                <input type="text" name="price_min" placeholder="岁" autocomplete="off" oninput="value=value.replace(/[^\d]/g,'')" class="layui-input">
              </div>
              <div class="layui-form-mid">-</div>
              <div class="layui-input-inline" style="width: 100px;">
                <input type="text" name="price_max" placeholder="岁" autocomplete="off" oninput="value=value.replace(/[^\d]/g,'')" class="layui-input">
              </div>
            </div>
          </div>


     </form>
     <div>

  
  <h2>请选择你的性别</h2>
  
  <div>
  
  男&nbsp&nbsp<input type="radio" name="sex" class="gcs-radio" id="男" />
  
  <label for="男"></label> 
  <hr />
  
  女&nbsp&nbsp<input type="radio" name="sex" class="gcs-radio" id="女" />
  
  <label for="女"></label>

  <div>

    <div class="layui-form-item">
        <div class="layui-inline">
          <label class="layui-form-label">薪资范围</label>
          <div class="layui-input-inline" style="width: 100px;">
            <input type="text" name="price_min" placeholder="￥" autocomplete="off" oninput="value=value.replace(/[^\d]/g,'')" class="layui-input">
          </div>
          <div class="layui-form-mid">-</div>
          <div class="layui-input-inline" style="width: 100px;">
            <input type="text" name="price_max" placeholder="￥" autocomplete="off" oninput="value=value.replace(/[^\d]/g,'')" class="layui-input">
          </div>
        </div>
      </div>

  </div>
  
  
  </div>

  <hr />
    
 


     &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
      <a href="下发招聘通知.html" class="layui-btn layui-btn-lg" onclick="alert('发布招聘要求成功')">发布招聘要求</a>
      
  
  <div class="layui-footer">

   
  </div>
</div>

</body>
</html>