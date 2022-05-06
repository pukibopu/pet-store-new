<%--
  Created by IntelliJ IDEA.
  User: jinjo
  Date: 2022/4/29
  Time: 上午1:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>PetStore · Bootstrap</title>
    <link rel="shortcut icon" href="images/favicon.ico" />
    <!-- CSS -->
    <link rel="stylesheet" href="styles/bootstrap4.3.1.css" >
    <link rel="stylesheet" href="styles/base.css">
    <link rel="stylesheet" href="styles/index.css">
    <script src="javascript/jquery-2.0.0.min.js"></script>
    <script src="javascript/remove-item.js"></script>
</head>
<body>
<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
    <img src="images/logo.png" width="64" height="64" class="mb-2">
    <h5 class="my-0 mr-md-auto font-weight-normal">宠物商店</h5>
    <nav class="my-2 my-md-0 mr-md-3">
        <a class="p-2 text-dark" href="index.jsp">首页</a>
        <a class="p-2 text-dark" href="#">顾客名</a>
        <a class="p-2 text-dark" href="cart.jsp">购物车</a>
        <a class="p-2 text-dark" href="#">联系客服</a>
    </nav>
    <a class="btn btn-outline-primary" href="#">登录</a>
</div>