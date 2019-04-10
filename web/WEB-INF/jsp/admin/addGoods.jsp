<%--
  Created by IntelliJ IDEA.
  User: 祥子
  Date: 2019/4/6
  Time: 20:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%  String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 %>

<html>
<head>
    <base href="<%=basePath%>">
    <title>addGoods.jsp</title>
    <link href="${pageContext.request.contextPath}/css/admin/common.css" type="text/css" rel="stylesheet">

</head>
<body>
    <form:form action="adminGoods/addGoods" method="post" modelAttribute="goods" enctype="multipart/form-data">
        <table border="1" style="border-collapse:collapse">
            <caption>
                <font size="4" face="华文新魏">添加商品</font>
            </caption>
            <tr>
                <td>名称</td>
                <td><form:input path="gname"/></td>
            </tr>
            <tr>
                <td>原价</td>
                <td><form:input path="goprice"/> </td>
            </tr>
            <tr>
                <td>折扣价</td>
                <td><form:input path="grprice"/> </td>
            </tr>
            <tr>
                <td>库存</td>
                <td><form:input path="gstore"/> </td>
            </tr>
            <tr>
                <td>图片</td>
                <td>
                    <input type="file" name="logoImage"/>
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
