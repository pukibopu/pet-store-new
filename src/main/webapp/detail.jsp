<%--
  Created by IntelliJ IDEA.
  User: jinjo
  Date: 2022/4/29
  Time: 上午12:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%%>
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
    <link rel="stylesheet" href="styles/detail.css">

</head>
<body>
<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
    <img src="images/logo.png" width="64" height="64" class="mb-2">
    <h5 class="my-0 mr-md-auto font-weight-normal">宠物商店</h5>
    <nav class="my-2 my-md-0 mr-md-3">
        <a class="p-2 text-dark" href="#">首页</a>
        <a class="p-2 text-dark" href="#">顾客名</a>
        <a class="p-2 text-dark" href="#">购物车</a>
        <a class="p-2 text-dark" href="#">联系客服</a>
    </nav>
    <a class="btn btn-outline-primary" href="#">登录</a>
</div>
<div class="container">
    <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        <div class="col-auto d-none d-lg-block">
            <img src="petImg/${pet.getPhoto()}" width="300" heght="400" class="mb-2">
        </div>
        <div class="col p-4 d-flex flex-column position-static">
            <h3 class="d-inline-block mb-2 text-dark">${pet.getTitle()}</h3>

            <div class="mb-2 text-muted">
                <c:forEach items="${pet.getTag().split(\",\")}" var="tag">
                    <span class="pet-tag">${tag}</span>
                </c:forEach>
            </div>

            <p class="card-text">${pet.getDescription()}</p>
            <p>￥<span id="pet-price">${pet.getPrice()}</span></p>
            <p>库存 (<span id="pet-stock">${pet.getStock()}</span>)</p>
            <nav>
                <button class="btn btn-warning" type="button">加入购物车</button>
                <button class="btn btn-warning" type="button">返回列表</button>
            </nav>

        </div>
    </div>
</div>
<footer class="footer mt-auto py-3">
    <div class="container">
        <div class="row">
            <div class="col-12 col-md">
                <img src="images/logo.png" width="24" height="24" class="mb-2">
                <small class="d-block mb-3 text-muted">© 2019-2012</small>
            </div>
            <div class="col-6 col-md">
                <h5>备案信息</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-muted" href="#">备案号</a></li>
                </ul>
            </div>
            <div class="col-6 col-md">
                <h5>工商信息</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-muted" href="#">商业资质</a></li>
                </ul>
            </div>
            <div class="col-6 col-md">
                <h5>关于我们</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-muted" href="#">宠物商店有限公司</a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>
</body>
</html>
</html>
