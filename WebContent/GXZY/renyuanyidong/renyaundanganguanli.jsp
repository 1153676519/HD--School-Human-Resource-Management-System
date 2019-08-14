<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
    <jsp:useBean id="db" class="com.my.SQL.Sql_data"/>
     <%@page import="java.net.*" %>
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
  <!--     <li class="layui-nav-item"><a href="..\wendangguanli\wendangleibie.jsp">文档管理</a></li> -->
      <li class="layui-nav-item"><a href="..\zuzhijigouguanli\jigouguanli.jsp">组织机构管理</a></li>
<!--       <li class="layui-nav-item"><a href="..\kaoqinguanli\renyuankaoqinliebiao.jsp">考勤管理</a></li> -->
      <li class="layui-nav-item"><a href="..\zhaopinguanli\shenhejihua.jsp">招聘管理</a></li>
      <li class="layui-nav-item"><a href="..\renyuanyidong\zhiwubiandongguanli.jsp">职务变动管理</a></li>
<!--       <li class="layui-nav-item"><a href="">系统管理</a></li> -->
    </ul>

  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">

      <ul class="layui-nav layui-nav-tree"  lay-filter="test">

        <li class="layui-nav-item"><a href="zhiwubiandongguanli.jsp">职务变动管理</a></li>
        <li class="layui-nav-item"><a href="renyaundanganguanli.jsp">人员档案管理</a></li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <div style="padding: 80px;">

        <h1>人员档案管理</h1>
    
        <table class="layui-table">
            <thead>
                <tr>
                  <th>id</th>
                  <th>职务</th>
                  <th>姓名</th>
                  <th></th>
                </tr>
            </thead>
            <%
				String id = null;
	            String zhiwu = null;
	            String name = null;
            	//String psd = null;
				 id = request.getParameter("aa");
				//name = request.getParameter("dd");
				//zhiwu = request.getParameter("bb");
				 name= URLDecoder.decode( request.getParameter("dd"), "UTF-8");
		            zhiwu= URLDecoder.decode( request.getParameter("bb"), "UTF-8");
				
				//name = new String(name.getBytes("ISO-8859-1"),"UTF-8"); //中文处理
				//psd = request.getParameter("cc");
				
				%>
				<form action="<%=path %>/zhiwubiandongServlet" method="get">
            <tr>
              <td><input type="hidden" name="id" value="<%=id %>"><%=id %></td>
              <td> <input type="text"  name="zhiwu" value="<%=zhiwu %>" name="username"
                     lay-verify="required"  autocomplete="off" class="layui-input"></td>
              <td><input type="hidden" name="name" value="<%=name %>"><%=name %></td>
              <td>
                <button  type="submit" name="sub" value="修改" class="layui-btn">确认修改</button>
            
              </td>
            </tr>
             </form>
     </table>
 
    
    </div>
  </div>
  
  <div class="layui-footer">
  </div>
</div>

</body>
</html>