<%--
  Created by IntelliJ IDEA.
  User: 祥子
  Date: 2019/3/23
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>后台登陆</title>
    <style type="text/css">
        table{
            text-align:center;
        }
        .textSize{
            width:120px;
            height:25px;
        }
        *{
            margin:0px;
            padding: 0px;
        }
        body{
            font-family:Arial,Helvetica,sans-serif;
            font-size:12px;
            margin:10px 10px auto;
            background-image: url(../../../images/admin/bb.jpg);
        }
    </style>
    <script type="text/javascript">
        //确定按钮
        function gogo(){
            document.loginform.submit();
        }
        //取消按钮
        function cancel(){
            document.loginform.action="";
        }

        function refreshCode(){
            document.getElementById("code").src="validateCode?"+Math.random();
        }
    </script>
</head>
<body>
    <center>
        <form:form action="admin/login" method="post" modelAttribute="auser" >
            <table>
                <tr>
                    <td colspan="2"><img src="../../../images/admin/login.gif"></td>

                </tr>
                <tr>
                    <td>姓名：</td>
                    <td>
                        <form:input path="aname" cssClass="textSize"/>
                    </td>
                </tr>
                <tr>
                    <td>密码：</td>
                    <td><form:input path="apwd" cssClass="textSize" maxlength="20"/> </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <input type="image" src="../../../images/admin/ok.gif" onclick="gogo()">
                        <input type="image" src="../../../images/admin/cancel.gif" onclick="cancel()">
                    </td>
                </tr>
            </table>
        </form:form>
        ${msg}
    </center>

</body>
</html>
