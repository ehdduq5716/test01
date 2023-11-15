<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
        Date nowTime = new Date();
        SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Server infomation </title>
</head>
<body>
현재 날짜와 시간은 <%= sf.format(nowTime) %> 입니다.
<br>
[Site C(WAS-C)]
<br>
session id = <%= session.getId() %>
<br>
<%      Integer counter = (Integer)session.getAttribute("counter");
        counter = ( counter == null )
                ? new Integer(1) : new Integer(counter.intValue() + 1);
        session.setAttribute("counter",counter);
%>
counter = <%= session.getAttribute("counter") %>
<br>
Host = <%= java.net.InetAddress.getLocalHost() %>
<br>
</body>
</html>