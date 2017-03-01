<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Jsp语法</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    This is my JSP page. <br>
    <!-- jsp表达式 -->
    <%	
    	//声明变量
    	String name="eric";
    	int a=10;
    	int b=20;
     %>
    <%=name%>
    <br/>
    <%=(a+b)%>
    <br/>
    <hr/>
    <!-- jsp脚本 -->
    <% 
    	//生成随机数
    	Random rand = new Random();
    	float f = rand.nextFloat();
    %>
        随机小数：<%=f %>
    <hr/>
    <!-- 穿插HTML代码 -->
    <%
    	for(int i=1;i<=6;i++){
     %>
    <h<%=i %>>标题<%=i %></h<%=i %>>
    <%} %>
    <hr/>
    <!-- 练习：jsp生成99乘法表 -->
    <%
    	for(int y=1;y<=9;y++){
    		for(int x=1;x<=y;x++){
    %>           <%=x %> X <%=y %>=<%=(x*y) %>&nbsp;
     <% 	}%>
     		<br/>
     <% } %>
     <!-- jsp声明 -->
     <%!
        /*
        	不能在脚本中声明方法
        	不能重复定义一些翻译好的方法
        */
     	String name="jacky";//会翻译成成员变量
     	public String getName(){//会翻译成成员方法
     		return name;
     	}
      %>
      <!--html注释：会被翻译和执行-->
      <%--jsp注释:不会被翻译和执行--%>
  </body>
</html>
