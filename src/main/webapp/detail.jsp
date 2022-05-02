<%--
  Created by IntelliJ IDEA.
  User: jinjo
  Date: 2022/4/29
  Time: 上午12:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp"%>
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
            <form action="AddCartServlet" method="get"></form>
            <p class="card-text">${pet.getDescription()}</p>
            <p>￥<span id="pet-price">${pet.getPrice()}</span></p>
            <p>库存 (<span id="pet-stock">${pet.getStock()}</span>)</p>
            <form action="AddCartServlet" method="get">

                <label for="pet-quantity">数量</label>  <input type="text" id="pet-quantity" name="quantity" value="1">
                <input type="hidden" name="id" value="${pet.getId()}">
                <nav>
                    <button class="btn btn-warning" type="submit">加入购物车</button>
                    <button class="btn btn-warning" type="button">返回列表</button>
                </nav>
            </form>


        </div>
    </div>
</div>
<%@include file="footer.jsp"%>
