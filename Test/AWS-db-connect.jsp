<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>

<h1>WAS-C</h2>

<%
        Connection conn=null;
        try{
                String Url="jdbc:mysql://dongyeop-test-db.c49m5xirvg9c.ap-northeast-2.rds.amazonaws.com/DY_Test";
                String Id="admin";
                String Pass="potter120";

                Class.forName("com.mysql.jdbc.Driver");
                conn=DriverManager.getConnection(Url,Id,Pass);
                out.println("was-C Connect Success!");
        }catch (Exception e){
                   e.printStackTrace();
}
%>