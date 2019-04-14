<%--
  Created by IntelliJ IDEA.
  User: 祥子
  Date: 2019/4/11
  Time: 13:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>addNotice.jsp</title>
    <link href="${pageContext.request.contextPath}/css/admin/common.css" type="text/css" rel="stylesheet">

</head>
<body>
    <form:form action="adminNotice/addNotice" method="post" modelAttribute="notice">
        <table border="1" style="border-collapse:collapse">
            <caption>
                <font size="4" face="华文新魏">添加公告</font>
            </caption>
            <tr>
                <td>标题</td>
                <td>
                    <form:input path="ntitle"/>
                </td>

            </tr>
            <tr>
                <td>内容<font color="red">*</font></td>
                <td>
                    <form:textarea path="ncontent"/>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <input type="submit" value="提交"/>
                </td>
                <td align="left">
                    <input type="reset" value="重置"/>
                </td>
            </tr>
        </table>
    </form:form>

</body>
</html>
