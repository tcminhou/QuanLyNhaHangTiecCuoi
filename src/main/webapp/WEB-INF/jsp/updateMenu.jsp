<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h1 class="btn-success text-center">CHỈNH SỬA THÔNG TIN MENU</h1>
<c:url value="admin/updateMenu/{id}" var="action" />
<form:form action="${updateU}" method="post" modelAttribute="menu" enctype="multipart/form-data">
    <div id="fom-update">
        <div class="form-floating mb-3 mt-3">
            <form:input type="text" class="form-control" path="appetizer" id="appetizer" placeholder="Món khai vị" name="appetizer" />
            <label for="name">Món khai vị</label>
            <form:errors path="appetizer" element="div" cssClass="invalid-feedback" />
        </div>
        <div class="form-floating mb-3 mt-3">
            <form:input type="text" class="form-control" path="maincourse1" id="maincourse1" placeholder="Món chính 1" name="maincourse1" />
            <label for="maincourse1">Món chính 1</label>
            <form:errors path="maincourse1" element="div" cssClass="invalid-feedback" />
        </div>

        <div class="form-floating mb-3 mt-3">
            <form:input type="text" class="form-control" path="maincourse2" id="maincourse2" placeholder="Món chính 2" name="maincourse2" />
            <label for="maincourse2">Món chính 2</label>
            <form:errors path="maincourse2" element="div" cssClass="invalid-feedback" />
        </div>
        
        <div class="form-floating mb-3 mt-3">
            <form:input type="text" class="form-control" path="maincourse3" id="maincourse3" placeholder="Món chính 3" name="maincourse3" />
            <label for="maincourse3">Món chính 3</label>
            <form:errors path="maincourse3" element="div" cssClass="invalid-feedback" />
        </div>
        
        <div class="form-floating mb-3 mt-3">
            <form:input type="text" class="form-control" path="dessert" id="dessert" placeholder="Món tráng miệng" name="dessert" />
            <label for="dessert">Món tráng miệng</label>
            <form:errors path="dessert" element="div" cssClass="invalid-feedback" />
        </div>
        
        <div class="form-floating mb-3 mt-3">
            <form:input type="text" class="form-control" path="drinks" id="drinks" placeholder="Đồ uống" name="drinks" />
            <label for="drinks">Đồ uống</label>
            <form:errors path="drinks" element="div" cssClass="invalid-feedback" />
        </div>
        
        <div class="form-floating mb-3 mt-3">
            <form:input type="number" class="form-control" path="price" id="price" placeholder="price" name="price" />
            <label for="price">Giá menu</label>
            <form:errors path="price" element="div" cssClass="invalid-feedback" />
        </div>
        
        <div class="form-floating mb-3 mt-3">
            <form:input type="text" class="form-control" path="name" id="name" placeholder="name" name="name" />
            <label for="name">Tên menu</label>
            <form:errors path="name" element="div" cssClass="invalid-feedback" />
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
<script src="<c:url value="/js/menu.js" />"></script>
<script>

    window.onload = function () {
        viewUpdate(${menuId});
    }
</script>
