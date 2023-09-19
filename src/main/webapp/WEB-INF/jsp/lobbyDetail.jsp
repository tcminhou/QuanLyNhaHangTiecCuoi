
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
        <h2>Số bàn tối đa: ${product.qtytable} bàn</h2> 
        <h2>Số nhân viên phục vụ: ${product.qtystaff} nhân viên</h2>
        <h2>
            Giá sảnh: <fmt:formatNumber value="${product.price}" /> VNĐ             
        </h2>
    </div>
</div>
