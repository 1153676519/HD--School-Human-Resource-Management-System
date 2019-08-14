<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
    <jsp:useBean id="data" class="com.my.SQL.Sql_data"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css\layui.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">高校人力资源管理系统</div>
    <ul class="layui-nav layui-layout-left">
     <li class="layui-nav-item"><a href="..\salaryW\xinxiliulan.html">员工管理</a></li>
      <li class="layui-nav-item"><a href="..\salaryW\xinzhifafan.html">薪资管理</a></li>
      <li class="layui-nav-item"><a href="..\salaryW\wendangneibie.html">文档管理</a></li>
      <li class="layui-nav-item"><a href="..\salaryW\jigouguanli.html">组织机构管理</a></li>
      <li class="layui-nav-item"><a href="..\salaryW\renyuankaoqinbiao.html">考勤管理</a></li>
      <li class="layui-nav-item"><a href="">招聘管理</a></li>
      <li class="layui-nav-item"><a href="">人员异动</a></li>
      <li class="layui-nav-item"><a href="">系统管理</a></li>

      </li>
    </ul>

  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item"><a href="..\salaryW\yuangongxinxiliulan.html">员工信息浏览</a></li>
        <li class="layui-nav-item"><a href="..\salaryW\tianjiayuangongxinxi.html">添加员工信息</a></li>
        <li class="layui-nav-item"><a href="..\salaryW\yuangongxinxicaxun.html">员工信息查询</a></li>
        <li class="layui-nav-item"><a href="..\salaryW\yuangongxinxicaxun1.html"></a></li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <div style="padding: 80px;">
    
      <table class="layui-table">
       <thead>
            <tr>
              <th>id</th>
              <th>姓名</th>
              <th>年龄</th>
              <th>性别</th>
              <th>邮箱</th>
              <th>密码</th>
              <th></th>
            </tr>
        </thead>
      <% 
	 ResultSet re=null;
	 String sql="select * from wke";
	 re=data.executeQuery(sql);
 while(re.next()){
	String id=re.getString("id");
	String name=re.getString("name");
	String age=re.getString("age");
	String sex=re.getString("sex");
	String mail=re.getString("mail");
	String pass=re.getString("password");
    
	//String pass="123";
	System.out.println(id+","+","+","+name+","+age+","+sex+","+mail+","+pass);
	out.print("<tr><td>"+id+"</td><td>"+name+"</td><td>"+age+"</td><td>"+sex+"</td><td>"+mail+"</td><td>"+pass+"</td>"+
	"<td><a href='update.jsp?aa="+id+"&&cc="+pass+"'>修改</a></td>"+
	"<td><a href='deleteServlet?aa="+id+"'>删除</a></td></tr>");
	 }
	%>
       

      </table>
    
    </div>
  </div>
  
  <div class="layui-footer">

  </div>
</div>


	</body>
</html>