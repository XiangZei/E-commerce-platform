<%--
  Created by IntelliJ IDEA.
  User: 祥子
  Date: 2019/3/15
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台管理系统</title>
</head>
<body>
    <div id="header">
        <br>
        <br>
        <h1>欢迎${auser.aname}进入后台管理系统</h1>
    </div>
    <div id="navigator">
        <ul>
            <li><a>商品管理</a>
                <ul>
                    <li><a href="adminGoods/toAddGoods" target="center">添加商品</a></li>
                    <li><a href="adminGoods/selectGoods?act=deleteSelect" target="center">删除商品</a></li>
                    <li><a href="adminGoods/selectGoods?act=updateSelect" target="center">修改商品</a></li>
                    <li><a href="adminGoods/selectGoods" target="center">查询商品</a></li>
                </ul>
            </li>

            <li><a>类型管理</a>
                <ul>
                    <li><a href="adminType/toAddType" target="center">添加类型</a></li>
                    <li><a href="adminType/toDeleteType" target="center">删除类型</a></li>

                </ul>
            </li>

            <li><a>用户管理</a>
                <ul>
                    <li><a href="adminUser/userInfo" target="center">删除用户</a></li>
                </ul>
            </li>

            <li><a>订单管理</a>
                <ul>
                    <li><a href="adminOrder/orderInfo" target="center">删除订单</a></li>
                </ul>
            </li>
            <li><a>公告管理</a>
                <ul>
                    <li><a href="adminNotice/toAddNotice">添加公告</a></li>
                    <li><a href="adminNotice/deleteNoticeSelect">删除公告</a></li>
                </ul>
            </li>
            <li><a href="exit">安全退出</a>

            </li>
        </ul>
    </div>

    <div id="content">
        <iframe src="adminGoods/selectGoods" name="center" frameborder="0" ></iframe>
    </div>

    <div id="footer">
        Copyright ©清华大学出版社
    </div>
</body>
</html>
