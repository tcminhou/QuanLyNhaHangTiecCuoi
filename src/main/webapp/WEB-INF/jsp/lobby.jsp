<%-- 
    Document   : lobby
    Created on : Aug 15, 2022, 6:14:59 PM
    Author     : HP
--%>
<!--SẢNH-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--import c-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--format number-->
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<h1 class="text-center text-primary" style="padding-top: 15px">SẢNH TIỆC CƯỚI</h1>



<div class="container">
    <!--đổ danh sách sản phẩm ra--> 
    <div class="row">
        <c:forEach items="${lobbies}" var="p">
            <div class="col-md-3 col-12" style="padding: 10px;">
                <div class="card">
                    <img class="card-img-top" class="img-fluid" src="${p.image}" alt="Card image" width="150" height="250">
                    <div class="card-body">
                        <h4 class="card-title">${p.name}</h4>
                        <p class="card-text">
                            <fmt:formatNumber value="${p.price}" /> VNĐ
                        </p>
                        <a href="#" class="btn btn-primary"onclick="addToCart(${p.id}, '${p.name}', ${p.price})">Chọn sảnh</a>
                        <a href="<c:url value="/lobby/${p.id}" />" class="btn btn-primary">Xem chi tiết</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
<script src="<c:url value="/js/cart.js" />"></script>


