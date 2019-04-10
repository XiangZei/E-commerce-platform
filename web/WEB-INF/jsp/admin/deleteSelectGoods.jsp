<%--
  Created by IntelliJ IDEA.
  User: 祥子
  Date: 2019/4/7
  Time: 21:24
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
    <title>selectGoods.jsp</title>
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
        function changeColor(obj){
            obj.className="bgcolor";
        }
        function changeColor1(obj){
            obj.className="";
        }
    </script>
    <script type="text/javascript">
        function confirmDelete(){
            var n = document.deleteForm.ids.length;
            var count=0;
            for(var i =0;i<n;i++){
                if(document.deleteForm.ids[i].checked){
                    count++;
                }else{
                    break;
                }
            }
            if(n>1){
                if(count==0){
                    alert("请选择被删除的商品！");
                    count=0;
                    return false;
                }
            }else{
                if(!document.deleteForm.ids.checked){
                    alert("请选择被删除的商品");
                    return false;
                }
            }

            if(window.confirm("真的删除吗？really？")){
                document.deleteForm.submit();
            }
            return false;
        }
        function checkDel(id){
            if(window.confirm("是否删除该商品?")){
                window.location.href="/电子商务平台/adminGoods/deleteAGoods?id="+id;
            }
        }
    </script>
</head>
<body>
    <c:if test="${allGoods.size()==0}">
        您还没有商品
    </c:if>
    <c:if test="${allGoods.size()!=0}">
        <form action="adminGoods/deleteGoods" name="deleteForm">
            <table border="1" style="bordercolor:PaleGreen">
                <tr>
                    <th width="100px">ID</th>
                    <th width="200px">名称</th>
                    <th width="200px">价格</th>
                    <th width="100px">库存</th>
                    <th width="100px">详情</th>
                    <th width="100px">操作</th>
                </tr>
                <c:forEach items="${allGoods}" var="goods">
                    <tr onmousemove="changeColor(this)" onmouseout="changeColor1(this)">
                        <td><input type="checkbox" name="ids" value="${goods.id}"/></td>
                        <td>${goods.gname}</td>
                        <td>${goods.grprice}</td>
                        <td>${goods.gstore}</td>
                        <td><a href="adminGoods/selectAGoods?id=${goods.id}" target="_blank">详情</a></td>
                        <td>
                            <a href="javascript:checkDel('${goods.id}')">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                <tr>
                    <td colspan="6">
                        <input type="button" value="删除" onclick="confirmDelete()">
                    </td>
                </tr>
                <tr>
                    <td colspan="6" align="right">
                        &nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;共${totalCount}条记录&nbsp;&nbsp;共${totalPage}页&nbsp;&nbsp;
                        第${pageCur}页&nbsp;&nbsp;

                        <c:url var="url_pre" value="adminGoods/selectGoods">
                            <c:param name="pageCur" value="${pageCur-1}"/>
                            <c:param name="act" value="deleteSelect"/>
                        </c:url>
                        <c:url var="url_next" value="adminGoods/selectGoods">
                            <c:param name="pageCur" value="${pageCur + 1 }"/>
                            <c:param name="act" value="deleteSelect"/>
                        </c:url>
                        <!-- 第一页没有上一页 -->
                        <c:if test="${pageCur != 1 }">
                            <a href="${url_pre}">上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
                        </c:if>
                        <!-- 最后一页，没有下一页 -->
                        <c:if test="${pageCur != totalPage && totalPage != 0}">
                            <a href="${url_next}">下一页</a>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">${msg }</td>
                </tr>
            </table>
        </form>
    </c:if>
</body>
</html>
