<%--
  Created by IntelliJ IDEA.
  User: 祥子
  Date: 2019/4/8
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePaht = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <base href="<%=basePaht%>">
    <title>updateAgoods.jsp</title>
    <link href="${pageContext.request.contextPath}/css/admin/common.css" type="text/css" rel="stylesheet">

</head>
<body>
    <form:form action="adminGoods/addGoods?updateAct=update" method="post" modelAttribute="goods" enctype="multipart/form-data">
        <table border="1" style="border-collapse:collapse">
            <caption>
                <font size="4" face="华文新魏">修改商品</font>
                <form:hidden path="id"/>
            </caption>
            <tr>
                <td>名称</td>
                <td>
                    <form:input path="gname"/>
                </td>
            </tr>
            <tr>
                <td>原价</td>
                <td>
                    <form:input path="goprice"/>
                </td>
            </tr>
            <tr>
                <td>折扣价</td>
                <td>
                    <form:input path="grprice"/>
                </td>
            </tr>
            <tr>
                <td>库存</td>
                <td>
                    <form:input path="gstore"/>
                </td>
            </tr>
            <tr>
                <td>图片</td>
                <td>
                    <input type="file" name="logoImage"/>
                    <br>
                    <c:if test="${goods.gpicture != ''}">
                        <img alt="" width="250" height="250"
                             src="logos/${goods.gpicture}"/>
                    </c:if>
                </td>
            </tr>
            <tr>
                <td>类型</td>
                <td>
                    <form:select path="goodstype_id">
                        <form:options items="${goodsType}" itemLabel="typename" itemValue="id"/>

                    </form:select>
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
