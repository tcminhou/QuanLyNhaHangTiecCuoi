
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar bg-light">
  <div class="container-fluid">
    <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="<c:url value="/employ/lobby" />">Quản lý sảnh</a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="<c:url value="/employ/menu" />">Quản lý menu</a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="<c:url value="/employ/service" />">Quản lý dịch vụ</a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="<c:url value="/employ/wedding" />">Tra cứu tiệc cưới</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<c:url value="/" />">Trang chủ</a>
      </li>
    </ul>
  </div>
</nav>
