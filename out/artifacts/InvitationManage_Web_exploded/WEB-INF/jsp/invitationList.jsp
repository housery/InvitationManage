<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/16
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/style.css">
    <title>invitationList</title>
</head>
<body>
    <div class="container text-justify">
        <h1>帖子列表</h1>
        <form action="${pageContext.request.contextPath}/invitationList.html">
            <span>帖子标题：</span>
            <input type="text" name="summary">
            <input type="button" value="搜索">
        </form>
    </div>
</body>
</html>
<script src="${pageContext.request.contextPath}/statics/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/popper.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/statics/layer-v3.1.1/layer/layer.js"></script>
