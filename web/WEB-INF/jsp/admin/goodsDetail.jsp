<%--
  Created by IntelliJ IDEA.
  User: 祥子
  Date: 2019/4/8
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path=request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>goodsDetail.jsp</title>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
</head>
<body>
    <table border="1" style="border-collapse:collapse">
        <caption>
            <font size="4" face=华文新魏>商品详情</font>
        </caption>
        <tr>
            <td>名称</td>
            <td>${goods.gname}</td>
        </tr>
        <tr>
            <td>原价</td>
            <td>${goods.goprice}</td>
        </tr>
        <tr>
            <td>折扣价</td>
            <td>${goods.grprice}</td>

        </tr>
        <tr>
            <td>库存</td>
            <td>${goods.gstore}</td>
        </tr>
        <tr>
            <td>图片</td>
            <td>
                <c:if test="${goods.gpicture != ''}">
                    <img alt="" width="250" height="250"
                         src="logos/${goods.gpicture}"/>
                </c:if>
            </td>
        </tr>
        <tr>
            <td>类型</td>
            <td>
                ${goods.typename}
            </td>
        </tr>
    </table>

</body>
</html>
