<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id = null;
String psd = null;
id = request.getParameter("aa");
//name = request.getParameter("bb");
//name = new String(name.getBytes("ISO-8859-1"),"UTF-8"); //中文处理
psd = request.getParameter("cc");

%>
修改用户信息：<br>

<form action="loginServlet" method="get">
序号：<input type="hidden" name="id" value="<%=id %>"><%=id %><br>
		 密码：<input type="text" name="psd" value="<%=psd %>"><br>
		  <input type="submit" name="sub" value="修改"><br>
	</form>
	<br>
</body>
</html>