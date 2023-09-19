<%-- 
    Document   : login
    Created on : Aug 27, 2022, 3:07:12 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

<c:url value="/login" var="action" />
<div style="width: 350px; margin: 0px auto ">
    <div id="logreg-forms" style="text-align: center">
        <form class="form-signin " method="post" action="${action}">
            <h1 class="h3 mb-3 font-weight-normal text-info" style="text-align: center; padding-top: 15px"> ĐĂNG NHẬP</h1>

            <input type="text" id="username" name="username" class="form-control" placeholder="Tên đăng nhập" required="" autofocus="">
            <input type="password" id="password" name="password" class="form-control" placeholder="Mật khẩu" required="" style="margin-top: 10px">

            <button class="btn btn-success btn-block" type="submit" style="margin-top: 10px"><i class="fas fa-sign-in-alt"></i> Đăng nhập</button>

            <hr>
            <a href="<c:url value="/register" />">
                <button class="btn btn-primary btn-block" type="button" id="btn-signup"><i class="fas fa-user-plus"></i> Đăng kí tài khoản</button>
            </a>
        </form>
    </div>
</div>