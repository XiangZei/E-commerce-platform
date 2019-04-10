<%--
  Created by IntelliJ IDEA.
  User: 祥子
  Date: 2019/4/9
  Time: 21:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>deleteType.jsp</title>
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
    <script type="text/javascript">
        function checkDel(id){
            if(window.confirm("是否要删除该商品类型？")){
                window.location.href="/电子商务平台/adminGoods/deleteType?id="+id;
            }
        }
    </script>

</head>
<body>
    <c:if test="${allTypes.size()==0}">
        您还没有类型
    </c:if>
    <c:if test="${allTypes.size()!= 0}">
        <table border="1" style="border-color: PaleGreen">
            <tr>
                <th width="200px">类型ID</th>
                <th width="300px">类型名称</th>
                <th width="300px">删除操作</th>
            </tr>
            <c:forEach items="${allTypes}" var="goodsTypes">
                <tr>
                    <td>${goodsTypes.id}</td>
                    <td>${goodsTypes.typename}</td>
                    <td><a href="javascript:checkDel('${goodsTypes.id}')">删除</a></td>
                </tr>
            </c:forEach>
            <tr>
                <td colspan="3">${msg}</td>
            </tr>
        </table>
    </c:if>

</body>
</html>
