<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! int number=0;
synchronized void countpeople(){
	number++;
}%>
<% if(session.isNew()){
	countpeople();
	String str=String.valueOf(number);
	session.setAttribute("count", str);
}
%> 
<p>您是第<%=session.getAttribute("count") %>个访问本网站</p>
<%--<p>您是第${session.count}个访问本网站</p>--%>
登录成功
</body>
</html>