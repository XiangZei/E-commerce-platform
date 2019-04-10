<%--
  Created by IntelliJ IDEA.
  User: 祥子
  Date: 2019/3/23
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>增加商品类型</title>
    <link href="${pageContext.request.contextPath}/css/admin/common.css" type="text/css" rel="stylesheet">
    <style type="text/css">
        table{
            text-align:center;
            border-collapse:collapse;
        }
        .bgcolor{
            background-color:#F08080;
        }
    </style>
</head>

<body>
    <c:if test="${allTypes.size()==0}">
        您还没有类型
    </c:if>
    <c:if test="${allTypes.size()!=0}">
        <table border="1" bordercolor="PaleGreen">
            <tr>
                <th width="200px">类型ID</th>
                <th width="600px">类型名称</th>
            </tr>
            <c:forEach items="${allTypes }" var="goodsType">
                <tr>
                    <td>${goodsType.id}</td>
                    <td>${goodsType.typename}</td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    <form action="/电子商务平台/adminType/addType" method="post">
        类型名称
        <input type="text" name="typename"/>
        <input type="submit" value="添加"/>
    </form>
</body>
</html>
