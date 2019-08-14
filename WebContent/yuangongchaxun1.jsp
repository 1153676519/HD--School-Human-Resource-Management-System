<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
    <jsp:useBean id="db" class="com.my.SQL.Sql_data"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!--   <link rel="stylesheet" href="员工管理.css"> -->
   <link rel="stylesheet" href="css/layui.css">
<!--   <link rel="stylesheet" href="..\layui\layui\css\layui.css"> -->
</head>
<body>
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">高校人力资源管理系统</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
     <li class="layui-nav-item"><a href="..\salaryW\xinxiliulan.html">员工管理</a></li>
      <li class="layui-nav-item"><a href="..\salaryW\xinzhifafan.html">薪资管理</a></li>
      <li class="layui-nav-item"><a href="..\salaryW\wendangneibie.html">文档管理</a></li>
      <li class="layui-nav-item"><a href="..\salaryW\jigouguanli.html">组织机构管理</a></li>
      <li class="layui-nav-item"><a href="..\salaryW\renyuankaoqinbiao.html">考勤管理</a></li>
      <li class="layui-nav-item"><a href="">招聘管理</a></li>
      <li class="layui-nav-item"><a href="">人员异动</a></li>
      <li class="layui-nav-item"><a href="">系统管理</a></li>
    </ul>

  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">

      <ul class="layui-nav layui-nav-tree"  lay-filter="test">

        <li class="layui-nav-item"><a href="..\salaryW\yuangongxinxiliulan.html">员工信息浏览</a></li>
        <li class="layui-nav-item"><a href="..\salaryW\tianjiayuangongxinxi.html">添加员工信息</a></li>
        <li class="layui-nav-item"><a href="..\salaryW\yuangongxinxicaxun.html">员工信息查询</a></li>
        <li class="layui-nav-item"><a href="..\salaryW\yuangongxinxicaxun.html"></a></li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">

    <div class="bg" style="padding: 80px;">

     <h1>员工基本信息</h1>
     <table class="layui-table">
      <thead>
          <tr>
            <th style="font-size: 30px;">id</th>
            <th style="font-size: 30px;">姓名</th>
            <th style="font-size: 30px;">年龄</th>
            <th style="font-size: 30px;">性别</th>
            <th style="font-size: 30px;">邮箱</th>
            <th style="font-size: 30px;">密码</th>
            <th style="font-size: 30px;"></th>
          </tr>
      </thead>
      <%
String id = null;
id = request.getParameter("id");
System.out.print(id);
String sql="select * from wke where id='"+id+"'";
ResultSet rs = null;
rs = db.executeQuery(sql);
        
        try {
        	if(rs.next()) {
        		out.print("<tr>");
        		out.print("<td>"+rs.getString("id")+"</td>");
        		out.print("<td>"+rs.getString("name")+"</td>");
        		out.print("<td>"+rs.getString("age")+"</td>");
        		out.print("<td>"+rs.getString("sex")+"</td>");
        		out.print("<td>"+rs.getString("mail")+"</td>");
        		out.print("<td>"+rs.getString("password")+"</td>");
        		out.print("</tr>");
        	}else {
        		System.out.print(false);
        		response.sendRedirect("./yuangongxinxicaxun.html");
        	}	
        } catch (SQLException e) {
        	// TODO Auto-generated catch block
        	e.printStackTrace();
        }
        %>
        </table>
        </div>
  <div class="layui-footer">
  </div>
</div>
</div>
<script src="..\js\layui.js"></script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});
</script>



</body>
</html>