<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<jsp:useBean id="data" class="com.my.SQL.Sql_data"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	
	<style>
			body {
				margin: 0;
				padding: 0;
				font-family: sans-serif;
				background:url(img/backgrounds/3.jpg);
			}
			.box {
				width: 300px;
				padding: 40px;
				position: absolute;
				top: 50%;
				left: 50%;
				transform: translate(-50%, -50%);
				text-align: center;
			}
			.box h1 {
				color: white;
				text-transform: uppercase;
				font-weight: 500;
			}
			.box input[type='text'],
			.box input[type='password'] {
				border: 0;
				background: none;
				display: block;
				margin: 20px auto;
				text-align: center;
				border: 2px solid  #CCCCCC;
				padding: 14px 10px;
				width: 200px;
				outline: none;
				color: white;
				border-radius: 24px;
				transition: 0.25s;
			}
			.box input[type='text']:focus,
			.box input[type='password']:focus {
				width: 280px;
				border-color:#2ecc71;
			}
			.submit {
				border: 0;
				background: none;
				margin: 20px auto;
				margin-top: 0;
				display: inline-block;
				text-align: center;
				border: 2px solid #2ecc71;
				padding: 10px 40px;
				outline: none;
				color: white;
				border-radius: 24px;
				transition: 0.25s;
				cursor: pointer;
				text-decoration: none;
				font-size: 12px;
			}
			.submit:hover {
				background: #2ecc71;
				border-color: #2ecc71;
			}
			.submit2 {
				border: 0;
				background: none;
				margin: 20px auto;
				margin-top: 0;
				display: inline-block;
				text-align: center;
				border: 2px solid #2ecc71;
				padding: 10px 40px;
				outline: none;
				color: white;
				border-radius: 24px;
				transition: 0.25s;
				cursor: pointer;
				text-decoration: none;
				font-size: 12px;
			}
			.submit2:hover {
				background: #2ecc71;
				border-color: #2ecc71;
			}
		</style>
		
    </head>

    <body>
			<br>
      		<br>
      		<br>
      		<br>
      		<br>
      		<br>
      		<br>
      		<br>
      	
		<div class="text" style=" text-align:center;">
		<font  face="verdana" size="8" color="green">高校人力资源管理系统</font>
		</div>
    <div class="box">
	 <form action = "tiaozhuang" method = "post">	
		<input type="text" name = "id" placeholder="请输入你的账号" />
			<input type = "text" name="psd" placeholder="请输入你的密码" />
			<input class="submit"  type="submit" name="sub" value="登录">
			<input class="submit" type="button" value="注册" onclick="window.location.href('zhuce.jsp')">
		</div>
		</form>
  
</body>
	
</html>