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
<%
String path=request.getContextPath();
%>
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">高校人力资源管理系统</div>
    <ul class="layui-nav layui-layout-left">
        <li class="layui-nav-item"><a href="..\yuangongguanli\yuangongxinxichaxun.jsp">员工管理</a></li>
        <li class="layui-nav-item"><a href="..\xinziguanli\xinzifafang.jsp">薪资管理</a></li>
<!--         <li class="layui-nav-item"><a href="..\wendangguanli\wendangleibie.jsp">文档管理</a></li> -->
        <li class="layui-nav-item"><a href="..\zuzhijigouguanli\jigouguanli.jsp">组织机构管理</a></li>
<!--         <li class="layui-nav-item"><a href="..\kaoqinguanli\renyuankaoqinliebiao.jsp">考勤管理</a></li> -->
        <li class="layui-nav-item"><a href="..\zhaopinguanli\shenhejihua.jsp">招聘管理</a></li>
        <li class="layui-nav-item"><a href="..\renyuanyidong\zhiwubiandongguanli.jsp">职务变动管理</a></li>
<!--         <li class="layui-nav-item"><a href="">系统管理</a></li> -->

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
    <div style="padding: 80px;">
       <h1>修改员工信息</h1>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%
String id = null;
String psd = null;
id = request.getParameter("aa");
//name = request.getParameter("bb");
//name = new String(name.getBytes("ISO-8859-1"),"UTF-8"); //中文处理
psd = request.getParameter("cc");

%>
<form action="<%=path %>/loginServlet" method="get">
             <p style="font-size: 40px;">账号：</p>
             <br>
             <input type="hidden" name="id" value="<%=id %>"><%=id %><br>
       
       <div >
        <div class="layui-form-item">
          <label class="layui-form-label">新密码</label>
          <br>
          <div class="layui-input-inline">
            <input type="text"  name="psd" value="<%=psd %>" name="username" lay-verify="required" placeholder="请输入你的新密码" autocomplete="off" class="layui-input">
          </div>
        </div>
      </div>
      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
      &nbsp&nbsp&nbsp
      <button  type="submit" name="sub" value="修改" class="layui-btn">确认修改</button>
    </form>
    </div>
  </div>
  
  <div class="layui-footer">

  </div>
</div>

</body>
</html>
