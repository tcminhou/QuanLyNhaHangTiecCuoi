
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h1 class="text-center text-primary" style="padding-top: 15px">QUẢN LÝ DỊCH VỤ</h1>
<!--thêm sản phẩm-->
<c:url value="/employ/service" var="action"/>
<form:form method="post" action="${action}" modelAttribute="service" enctype="multipart/form-data">
    <form:errors path="*" element="div" cssClass="alert alert-danger" />
    <div class="form-floating mb-3 mt-3">
        <form:input type="text" class="form-control" path="name" id="name" placeholder="name" name="name" />
        <label for="name">Tên dịch vụ</label>
        <form:errors path="name" element="div" cssClass="invalid-feedback" />
    </div>
    <div class="form-floating mb-3 mt-3">
        <form:input type="number" class="form-control" path="price" id="price" placeholder="price" name="price" />
        <label for="price">Giá dịch vụ</label>
        <form:errors path="price" element="div" cssClass="invalid-feedback" />
    </div>

    <div class="form-group">
        <form:input type="file" id="image" path="file" class="form-control" />
        <form:errors path="file" element="div" cssClass="invalid-feedback" />
    </div>

    <div>
        <input type="submit" value="Thêm dịch vụ" class="btn btn-danger" style="margin-top: 15px"/>
    </div>
</form:form>


<!--xóa-->
<div class="container">
    <div class="spinner-border text-warning" id="myLoading"></div>
    <table class="table">
        <tr>
            <th></th>
            <th>Name</th>
            <th>Price</th>
            <th></th>
            <th></th>
        </tr>
        <tbody id="myService">

        </tbody>
    </table>
</div>

<!--Modal-->
<!--<div class="modal fade" id="confirmationId" tabindex="-1" role="dialog"
     aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Xác nhận</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Bạn có chắc chắn muốn xóa mục này?
            </div>
            <div class="modal-footer">
                <a id="yesOption" type="button" class="btn btn-danger">Có</a>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Không</button>
            </div>
        </div>
    </div>    
</div>-->

<script src="<c:url value="/js/employService.js" />"></script>
<script>
    <c:url value="/api/services" var="endpoint" />
    window.onload = function () {
        loadServices('${endpoint}');
    }
</script>