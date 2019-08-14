<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			.box input[type='text1'],
			.box input[type='text2'],
			.box input[type='text3'],
			.box input[type='password'] {
				border: 0;
				background: none;
				display: block;
				margin: 20px auto;
				text-align: center;
				border: 2px solid #CCCCCC;
				padding: 14px 10px;
				width: 200px;
				outline: none;
				color: white;
				border-radius: 24px;
				transition: 0.25s;
			}
			.box input[type='text']:focus,
			.box input[type='text1']:focus,
			.box input[type='text2']:focus,
			.box input[type='text3']:focus,
			.box input[type='password']:focus {
				width: 280px;
				border-color: #2ecc71;
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
		</style>
</head>
<body>

<div class="box">
<form action="insertintServlet" method="get">

			<h1>Login</h1>
			<input type="text" name="name"  placeholder="请输入你的姓名" />
			<input type="text1" name="age"   placeholder="请输入你的年龄" />
			<input type="text2" name="mail"   placeholder="请输入你的邮箱" />
			<input type="text3" name="sex" placeholder="性别：男/女" />
			<input type="password" name="psd" placeholder="请输入你的密码" />
		    <input class="submit" type="submit"  name="sub" value="确认"/><br>
		
</form>	
</div>

</body>













</html>