<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<jsp:useBean id="data" class="com.my.SQL.Sql_data"/>
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
 <!--      <li class="layui-nav-item"><a href="..\wendangguanli\wendangleibie.jsp">文档管理</a></li> -->
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

        <li class="layui-nav-item"><a href="xinzifafang.jsp">薪资发放</a></li>
        <li class="layui-nav-item"><a href="xinzichaxun.jsp">薪资查询</a></li>
        <li class="layui-nav-item"><a href="xinzhichaxun1.jsp"></a></li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <div style="padding: 80px;">
      <h1>薪资发放</h1>
      <table class="layui-table">
        <thead>
         <tr>
              <th>账号</th>
              <th>姓名</th>
              <th>工资</th>
              <th>薪资发放</th>
            </tr>
        </thead>
        
        <%
	 ResultSet re=null;
	 String sql="select * from wke";
	 re=data.executeQuery(sql);
 while(re.next()){
	String id=re.getString("id");
	String name=re.getString("name");
	String wage=re.getString("wage");
	//String pass="123";
	System.out.println(id+","+","+","+name+","+wage);
	out.print("<tr><td>"+id+"</td><td>"+name+"</td><td>"+wage+"</td>"+
	"<td><a href='xinzifafang.jsp?aa="+id+"&&cc="+wage+"'>发放</a></td></tr>");
	 }
	%>
	 <tr>
       
 

      </table>
            
    </div>
  </div>
  
  <div class="layui-footer">

  </div>
</div>

</body>
</html>