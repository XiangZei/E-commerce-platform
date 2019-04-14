<%--
  Created by IntelliJ IDEA.
  User: 祥子
  Date: 2019/4/11
  Time: 13:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <base href="<%=basePath%>">
    <title>deleteNoticeSelect.jsp</title>
    <link href="${pageContext.request.contextPath}/css/admin/common.css" type="text/css" rel="stylesheet">
</head>
<style type="text/css">
    table{
        text-align: center;
        border-collapse: collapse;
    }
    .bgcolor{
        background-color: #F08080;
    }
</style>
<script type="text/javascript">
    function changeColor(obj){
        obj.className="bgcolor";
    }
    function changeColor1(obj){
        obj.className="";
    }
    function checkDel(id){
        if(window.confirm("是否删除该公告")){
            window.location.href="/电子商务平台/adminNotice/deleteNotice?id="+id;
        }
    }
</script>
<body>
<c:if test="${allNotices.size()==0}">
    您还没有公告
</c:if>
<c:if test="${allNotices.size()!= 0}">
    <table border="1" style="border-collapse: collapse; border-color: chartreuse">
        <tr>
            <th width="200px">ID</th>
            <th width="200px">标题</th>
            <th width="200px">时间</th>
            <th width="100px">详情</th>
            <th width="100px">操作</th>
        </tr>
        <c:forEach items="${allNotices}" var="notice">
            <tr onmousemove="changeColor(obj)" onmouseout="changeColor1(obj)">
                <td>${notice.id}</td>
                <td>${notice.ntitle}</td>
                <td>${notice.ntime}</td>
                <td><a href="adminNotice/selectANotice?id=${notice.id}">详情</a></td>
                <td><a href="javascript:checkDel('${notice.id}')">删除</a></td>
            </tr>
        </c:forEach>

    </table>
</c:if>

</body>
</html>
