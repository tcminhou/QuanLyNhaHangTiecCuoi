<%-- 
    Document   : register
    Created on : Aug 28, 2022, 8:56:45 PM
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<c:url value="/register" var="action" />

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<link rel="stylesheet" href="resources/style.css" type="text/css">
<title>Bootstrap 4 Login/Register Form</title>

<div style="width: 350px; margin: 0px auto ">
    <div id="logreg-forms" style="text-align: center">        

        <form:form class="form-signin " method="post" action="${action}" enctype="multipart/form-data" modelAttribute ="user">
            <h1 class="h3 mb-3 font-weight-normal text-info" style="text-align: center; padding-top: 15px"> ĐĂNG KÝ</h1>

            <c:if test="${errMsg != null}">
                <div class="alert alert-danger">
                    ${errMsg}
                </div>
            </c:if>

            <div class="form-group">
                <form:input type="text" id="firstname" path="firstname" class="form-control" placeholder="First Name"/>
            </div>

            <div class="form-group">
                <form:input type="text" id="lastname" path="lastname" class="form-control" placeholder="Last Name"/>
            </div>

            <div class="form-group">
                <form:input type="email" id="email" path="email" class="form-control" placeholder="Email"/>
            </div>

            <div class="form-group">                
                <form:input type="phone" id="phone" path="phone" class="form-control" placeholder="Phone" />
            </div>

            <div class="form-group">
                <form:input type="text" id="address" path="address" class="form-control" placeholder="Address"/>
            </div>

            <div class="form-group">
                <form:input type="text" id="username" path="username" class="form-control" placeholder="Username"/>
            </div>

            <div class="form-group">
                <form:input type="password" id="password" path="password" class="form-control" placeholder="Password" />

            </div>
            <div class="form-group">
                <form:input type="password" id="confirmpassword" path="confirmpassword" class="form-control" placeholder="Confirm Password" />
            </div>

            <div class="form-group">
                <form:input type="file" id="image" path="file" class="form-control" />
            </div>

            <button class="btn btn-success btn-block" type="submit" style="margin-top: 10px"><i class="fas fa-user-plus"></i> Đăng ký</button>

        </form:form>
    </div>
</div>
