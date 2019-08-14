<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
    <jsp:useBean id="db" class="com.my.SQL.Sql_data"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>高校人力资源管理系统</title>
  <link rel="stylesheet" href="员工管理.css">
  <link rel="stylesheet" href="..\layui\layui\css\layui.css">

</head>
<body class="layui-layout-body">
<%
String path=request.getContextPath();
%>
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">高校人力资源管理系统</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href="..\yuangongguanli\yuangongxinxichaxun.jsp">员工管理</a></li>
      <li class="layui-nav-item"><a href="..\xinziguanli\xinzifafang.jsp">薪资管理</a></li>
<!--       <li class="layui-nav-item"><a href="..\wendangguanli\wendangleibie.jsp">文档管理</a></li> -->
      <li class="layui-nav-item"><a href="..\zuzhijigouguanli\jigouguanli.jsp">组织机构管理</a></li>
<!--       <li class="layui-nav-item"><a href="..\kaoqinguanli\renyuankaoqinliebiao.jsp">考勤管理</a></li> -->
      <li class="layui-nav-item"><a href="..\zhaopinguanli\shenhejihua.jsp">招聘管理</a></li>
      <li class="layui-nav-item"><a href="..\renyuanyidong\zhiwubiandongguanli.jsp">职务变动管理</a></li>
<!--       <li class="layui-nav-item"><a href="">系统管理</a></li> -->

      </li>
    </ul>

  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">

      <ul class="layui-nav layui-nav-tree"  lay-filter="test">

        <li class="layui-nav-item"><a href="yuangongxinxiliulan.jsp">员工信息浏览</a></li>
        <li class="layui-nav-item"><a href="tianjiayuangongxinxi.jsp">添加员工信息</a></li>
        <li class="layui-nav-item"><a href="yuangongxinxichaxun.jsp">员工信息查询</a></li>
        <li class="layui-nav-item"><a href="yuangongxinxichaxun1.jsp"></a></li>
        <li class="layui-nav-item"><a href="yuangongxinxixiugai.jsp"></a></li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">

    <div class="bg" style="padding: 50px;">

     <h1>员工基本信息</h1>
     <form action="<%=path %>/insertintoServlet" method="get" class="layui-form">

        <div >
          <div class="layui-form-item">
            <label class="layui-form-label">名字</label>
            <div class="layui-input-inline">
              <input type="text" name="name" lay-verify="required" placeholder="请输入你的名字" autocomplete="off" class="layui-input">
            </div>
          </div>
        </div>
        <div >
          <div class="layui-form-item">
            <label class="layui-form-label">年龄</label>
            <div class="layui-input-inline">
              <input type="text1" name="age" lay-verify="required" placeholder="请输入你的年龄" autocomplete="off" class="layui-input">
            </div>
          </div>
        </div>
        <input type="radio" name="sex" value="nan" title="男">
     <div>
  <h2>请选择你的性别</h2>
  <div>
<input type="text3" name="sex" placeholder="性别：男/女" />
  <div>
    <div class="layui-inline">
      <label class="layui-form-label">邮箱</label>
      <div class="layui-input-inline">
        <input type="text2" name="mail" lay-verify="email" autocomplete="off" class="layui-input">
      </div>
    </div>
  </div>
  </div>
          <div class="mm" style="padding-top: 20px;">
                <label class="layui-form-label">输入密码</label>
                <div class="layui-input-inline">
                  <input type="password" name="psd" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                </div>
        </div>
  <hr />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <input class="layui-btn layui-btn-lg"  class="submit" type="submit"  name="sub" value="确认"/>
       </form>
  
  <div class="layui-footer">

   
  </div>
</div>

</body>
</html>