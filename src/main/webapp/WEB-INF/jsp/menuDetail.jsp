<%-- 
    Document   : p-detail
    Created on : Aug 24, 2022, 1:11:43 AM
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--format number-->
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<h1 class="text-center text-info" style="padding: 15px">THÔNG TIN CHI TIẾT</h1>

<div class="row">
    <div class="col-md-5">
        <img src="${product.image}" class="img-fluid" />
    </div>
    <div class="col-md-7">
        <h1 style="color: #ff6600">${product.name}</h1>
        <h2>Món khai vị: ${product.appetizer}</h2>
        <h2>Món chính 1: ${product.maincourse1}</h2>
        <h2>Món chính 2: ${product.maincourse2}</h2>
        <h2>Món chính 3: ${product.maincourse3}</h2>
        <h2>Món tráng miệng: ${product.dessert}</h2>
        <h2>Đồ uống: ${product.drinks}</h2>
        <h2>
            Giá thực đơn: <fmt:formatNumber value="${product.price}" /> VNĐ             
        </h2>
    </div>
</div>