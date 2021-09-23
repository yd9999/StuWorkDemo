<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>系统登录</title>
    <link rel="stylesheet" href="css/login.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script src="./lib/layui/layui.js" charset="utf-8"></script>
</head>
<body class="login-bg">

<div class="login">
    <div class="message">系统登录</div>
    <div id="darkbannerwrap"></div>

    <form method="post" action="${path}/login.action">
        <input name="a_account" placeholder="用户名"  type="text" lay-verify="required" class="layui-input" >
        <hr class="hr15">
        <input name="a_pwd" lay-verify="required" placeholder="密码"  type="password" class="layui-input">
        <hr class="hr15">
        <input value="登录" style="width:100%;" type="submit">
        <hr class="hr20" >
    </form>

</div>

<!-- 底部结束 -->

</body>
</html>