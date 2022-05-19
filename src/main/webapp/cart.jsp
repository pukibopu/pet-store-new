<%--
  Created by IntelliJ IDEA.
  User: jinjo
  Date: 2022/5/2
  Time: 下午7:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp"%>
<div class="container">
    <div class="card">
        <div class="card-header">购物车</div>
        <div class="card-body">
            <table class="table panel-body ">
                <thead>
                <tr>
                    <td><input type="checkbox" name="" value="">全选</td>
                    <td></td>
                    <td>商品名称</td>
                    <td>单价</td>
                    <td>数量</td>
                    <td>操作</td>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${cart.getCartItemList()}" var="item">
                <tr id="${item.getId()}">

                        <td>
                            <input type="checkbox" name="" value="" checked="checked">
                        </td>
                        <td><img src="petImg/${item.getPhoto()}" width="80" ></td>
                        <td>${item.getTitle()}</td>
                        <td>
                            <span class="p-price"> ¥ ${item.getPrice()}</span>
                        </td>
                        <td>
                            <input type="text" class="form-control quan" value="${item.getQuantity()}">
                        </td>
                        <td><a href="javascript:doRequest(${item.getId()});">X</a></td>
                </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="card-footer">
            总计: <div class="pull-right">¥ <span id="total-money">${cart.getTotalMoney()}</span> </div>
            <button class="btn btn-warning  pull-right">立即结算</button>
        </div>
    </div>
</div>
<script lang="js">
    $(function () {
        $('.quan').change(function (){
            const datas={
                id:$(this).parents('tr').attr('id'),
                quantity:$(this).val()
            }
            $.ajax({
                type: 'post',
                url: 'changeQuan',
                data:datas,
                success:(resp)=>{
                    $('#total-money').text(resp)
                }

            })

        })
    })
</script>
<%@ include file="footer.jsp"%>