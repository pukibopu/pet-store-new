<%@ page import="java.util.List" %>
<%@ page import="com.example.entity.Pet" %>
<%@ page import="com.example.dao.PetDao" %><%--
  Created by IntelliJ IDEA.
  User: jinjo
  Date: 2022/4/29
  Time: 上午12:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp"  %>
<div class="container">
    <div class="card-deck mb-3 text-center">
        <c:forEach items="${petList}" var="pet">

                <a class="card mb-4 shadow-sm" href="DetailServlet?id=${pet.getId()}">
                    <div class="card-header">
                        <img src="petImg/${pet.getPhoto()}" class="pet-pic">
                    </div>
                    <div class="card-body">
                        <h1 class="card-title pricing-card-title"><small class="text-muted">${pet.getTitle()}</small></h1>
                        <p class="pet-desc">${pet.getDescription()}</p>
                        <p>
                            <c:forEach items="${pet.getTag().split(\",\")}" var="tag">
                                <span class="pet-tag">${tag}</span>
                            </c:forEach>
                        </p>

                        <p class="pet-price">${pet.getPrice()}</p>
                        <button class="btn btn-lg btn-block btn-outline-primary" type="button">加入购物车</button>
                    </div>
                </a>


        </c:forEach>

    </div>
</div>
<%@include file="footer.jsp"  %>
