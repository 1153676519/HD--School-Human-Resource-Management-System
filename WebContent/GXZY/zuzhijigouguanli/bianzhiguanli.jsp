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
<!--       <li class="layui-nav-item"><a href="..\wendangguanli\wendangleibie.jsp">文档管理</a></li> -->
      <li class="layui-nav-item"><a href="..\zuzhijigouguanli\jigouguanli.jsp">组织机构管理</a></li>
    <!--   <li class="layui-nav-item"><a href="..\kaoqinguanli\renyuankaoqinliebiao.jsp">考勤管理</a></li> -->
      <li class="layui-nav-item"><a href="..\zhaopinguanli\shenhejihua.jsp">招聘管理</a></li>
      <li class="layui-nav-item"><a href="..\renyuanyidong\zhiwubiandongguanli.jsp">职务变动管理</a></li>
     <!--  <li class="layui-nav-item"><a href="">系统管理</a></li> -->
      </li>
    </ul>

  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">

      <ul class="layui-nav layui-nav-tree"  lay-filter="test">

        <li class="layui-nav-item"><a href="jigouguanli.jsp">机构管理</a></li>
        <li class="layui-nav-item"><a href="bianzhiguanli.jsp">编制管理</a></li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 80px;">
      <h1>编制管理</h1>
        <table class="layui-table">
            <thead>
                <tr>
                  <th>机构名称</th>
                  <th>姓名</th>
                  <th>职务</th>
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
	String bumen=re.getString("bumen");
	String name=re.getString("name");
	String zhiwu=re.getString("zhiwu");
	String age=re.getString("age");
	String sex=re.getString("sex");
    
	//String pass="123";
	//System.out.println(id+","+","+","+name+","+age+","+sex+","+mail+","+pass);
	out.print("<tr><td>"+bumen+"</td><td>"+name+"</td><td>"+zhiwu+"</td><td>"+age+"</td><td>"+sex+"</td>"+
	"<td><a href='update.jsp?aa="+id+"&&cc="+bumen+"'>修改</a></td></tr>");
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