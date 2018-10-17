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
    <script src="${pageContext.request.contextPath}/statics/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/statics/js/popper.js"></script>
    <script src="${pageContext.request.contextPath}/statics/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/statics/layer-v3.1.1/layer/layer.js"></script>
    <title>addReply</title>
</head>
<body>
<div class="container">
    <form action="${pageContext.request.contextPath}/addReply">
        <input type="hidden" name="invid" value="${invid}">
        <div class="form-group">
            <label for="content">评论:</label>
            <textarea class="form-control" rows="3" id="content" name="content"></textarea>
            <label for="author">回复昵称:</label>
            <input type="text" class="form-control" id="author" name="author">
            <input type="submit" value="提交">
        </div>
    </form>
</div>
</body>
</html>

