<%-- 
    Document   : cart
    Created on : Aug 30, 2022, 2:29:44 PM
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!--format number-->
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<h1 class="text-center text-danger" style="padding-top: 15px">ĐẶT TIỆC CƯỚI</h1>

<c:if test="${carts == null}">
    <h4 class="text-danger" KHÔNG CÓ TIỆC CƯỚI NÀO ĐANG ĐẶT></h4>
</c:if>


<!--danh sách đặt hàng-->
<c:if test="${carts != null}">
    <table class="table">
        <tr>


            <th>Mã sản phẩm</th>
            <th>Tên sản phẩm</th>
            <th>Đơn giá</th>
            <th>Số lượng</th>
        </tr>
        <c:forEach items="${carts}" var="c">
            <tr>
                <td>${c.productId}</td>
                <td>${c.productName}</td>
                <td>
                    <fmt:formatNumber value="${c.price}" /> VNĐ
                </td>
                
                <td>
                    <div class="form-group">
                        <input type="number" onblur="updateCart(this, '${c.productName}')" value="${c.quantity}" class="form-control" />
                    </div>
                </td>
                <td>
                    <input type="button" 
                           value="Xóa" 
                           onclick="deleteCart('${c.productName}')"
                           class="btn btn-danger" />
                </td>
            </tr>
        </c:forEach>

    </table>
    <!--    ngày ngày tổ chức
        <label for="orderdate">Ngày tổ chức:</label>
        <input type="date" id="orderdate" name="orderdate">-->
    <!--tổng tiền-->
    <div>
        <h4 class="text-info"> Tổng tiền hóa đơn: <span id="amountCart"> <fmt:formatNumber value="${cartStats.amount}" /> </span> VND </h4>

    </div>


    <sec:authorize access="!isAuthenticated()">
        <a href="<c:url value="/login" />">Vui lòng đăng nhập để thanh tooán</a>
    </sec:authorize>

    <sec:authorize access="isAuthenticated()">
        <input type="button" onclick="pay()" value="Thanh toán" class="btn btn-danger" />
    </sec:authorize>

</c:if>
<script src="<c:url value="/js/cart.js" />"></script>