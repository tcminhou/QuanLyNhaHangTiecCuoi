
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h1 class="btn-success text-center">CHỈNH SỬA THÔNG TIN DỊCH VỤ</h1>
<c:url value="employ/updateService/{id}" var="action" />
<form:form action="${updateU}" method="post" modelAttribute="service" enctype="multipart/form-data">
    <div id="fom-update">
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
            <input type="submit" value="Cập nhật thông tin" class="btn btn-danger" style="margin-top: 15px"/>
        </div>
    </div>
</form:form>
<script src="<c:url value="/js/employService.js" />"></script>
<script>

    window.onload = function () {
        viewUpdate(${serviceId});
    }
</script>
