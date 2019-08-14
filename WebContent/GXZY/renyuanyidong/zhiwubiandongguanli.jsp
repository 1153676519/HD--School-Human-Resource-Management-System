<%@ page language="java" contentType="text/html;  charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
    <%@page import="java.net.*" %>
<!--     charset=UTF-8 -->
<jsp:useBean id="data" class="com.my.SQL.Sql_data"/>
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

        <li class="layui-nav-item"><a href="zhiwubiandongguanli.jsp">职务变动管理</a></li>
        <li class="layui-nav-item"><a href="renyaundanganguanli.jsp">人员档案管理</a></li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 80px;">
        <h1>职务变动管理</h1>
        <table class="layui-table">
            <thead>
                <tr>
                  <th>id</th>
                  <th>职务</th>
                  <th>姓名</th>
                  <th>年龄</th>
                  <th>性别</th>
                  <th></th>
                </tr>
            </thead>
         <%
        
	 ResultSet re=null;
	 String sql="select * from wke";
	 re=data.executeQuery(sql);
 while(re.next()){
	String id=re.getString("id");
	String zhiwu=re.getString("zhiwu");
	String name=re.getString("name");
	String age=re.getString("age");
	String sex=re.getString("sex");
	System.out.println(name);
	//String pass="123";
	String Name=URLEncoder.encode(name, "UTF-8");
	String ZhiWu=URLEncoder.encode(zhiwu, "UTF-8");
	//System.out.println(id+","+","+","+name+","+age+","+sex);
	out.print("<tr><td>"+id+"</td><td>"+zhiwu+"</td><td>"+name+"</td><td>"+age+"</td><td>"+sex+"</td>"+
	"<td><a  href='renyaundanganguanli.jsp?aa="+id+"&&bb="+ZhiWu+"&&dd="+Name+"'>变动职务</a></tr>");
	 }
	%>
	 <tr>
     
 </table>
    
    </div>
  </div>
  
 

  </div>
</div>

</body>
</html>