<%--
  Created by IntelliJ IDEA.
  User: 祥子
  Date: 2019/4/10
  Time: 19:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>error.jsp</title>

</head>
<H1>未知错误：</H1><%=exception%>
<H2>错误内容：</H2>
<%
    exception.printStackTrace(response.getWriter());
%>
<body>

</body>
</html>
