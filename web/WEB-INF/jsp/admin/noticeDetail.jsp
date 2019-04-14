<%--
  Created by IntelliJ IDEA.
  User: 祥子
  Date: 2019/4/11
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>

<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>noticeDetail.jsp</title>
</head>
<body>
    <h3 align="center">
            ${notice.ntitle}
    </h3>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;${notice.ncontent }</p>
    <p align="right">${notice.ntime }&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
</body>
</html>
