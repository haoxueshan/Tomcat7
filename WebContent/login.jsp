<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.center {
    text-align: center;
    
    border: 3px solid #73AD21;
    padding: 10px;
}
</style>
</head>
<body>
<%
String cn="";
String cp="";
 Cookie[] cookies=request.getCookies();
for(int i=0;cookies!=null && i<cookies.length;i++){
	if(cookies[i].getName().equals("admin")){
		cn = cookies[i].getName();
		cp = cookies[i].getValue();
		break;
	}
}
%>
<div class="center" >
<form action="bs" method="get">


<br>
   <b>账号</b>
   <input type="text" name="zh" value="<%=cn %>" size="25" maxlength="11"/><br/>
   <b>密码</b>
   <input type="password" name="mm" value="<%=cp %>" size="25"/>
   </br>
   <input type="submit" name="tj"  value="提交" >
   <input type="reset" name="cz"  value="重置" >
   <br>
   <b>是否保存账号密码</b><br>
   是<input type="radio" name="radio" value="shi" checked="checked" />
  否<input type="radio" name="radio" value="fou" />
   

</form>
