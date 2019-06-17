<%--
  Created by IntelliJ IDEA.
  User: 祥子
  Date: 2019/4/13
  Time: 14:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>

    <base href="<%=basePath%>">
    <title>用户管理</title>
    <link href="${pageContext.request.contextPath}/css/admin/common.css" type="text/css" rel="stylesheet">
    <style type="text/css">
        table{
            text-align:center;
            border-collapse: collapse;
        }
        .bgcolor{
            background-color: #F08080;
        }
    </style>
    <script type="text/javascript">
        function changeColor(obj) {
            obj.className="bgcolor"
        }
        function changeColor1(obj) {
            obj.className="";
        }
        function checkDel(id){
            if(window.confirm("是否删除该用户?")){
                window.location.href="/电子商务平台/adminUser/deleteuserManager?id="+id;
            }
        }
    </script>
</head>
<body>
<br>
<table border="1" bordercolor="PaleGreen">
    <tr>
        <th width="200px">用户ID</th>
        <th width="200px">用户E-mail</th>
        <th width="200px">用户密码</th>
        <th width="250px">删除</th>
    </tr>
    <c:forEach var="n" items="${userList}">
        <tr onmousemove="changeColor(this)" onmouseout="changeColor1(this)">
            <td>${n.id}</td>
            <td>${n.bemail}</td>
            <td><input type="password" value="${n.bpwd}" readonly></td>
            <td>
                <a href="javaScript:checkDel('${n.id}')">删除</a>
            </td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="4">${msg }</td>
    </tr>
</table>

</body>
</html>
