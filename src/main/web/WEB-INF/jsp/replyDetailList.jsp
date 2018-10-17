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
    <title>replyDetailList</title>
</head>
<body>
<div class="container">
    <h1>回复信息表</h1>
    <a href="${pageContext.request.contextPath}/gotoAddReply.html?invid=${invid}">添加回复</a>
    <a href="${pageContext.request.contextPath}/invitationList.html">返回帖子列表</a>
    <input type="hidden" name="pageIndex" value="1">
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>回复内容</th>
            <th>回复昵称</th>
            <th>发布时间</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="replyDetail" items="${replyDetailList}">
            <tr>
                <td>${replyDetail.content}</td>
                <td>${replyDetail.author}</td>
                <td>${replyDetail.createdate}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <c:import url="rollpage.jsp">
        <c:param name="totalCount" value="${totalCount}"/>
        <c:param name="currentPageNo" value="${currentPageNo}"/>
        <c:param name="totalPageCount" value="${totalPageCount}"/>
        <c:param name="url"
                 value="${pageContext.request.contextPath}/getReplyDetailList.html?invid=${invid}&pageIndex"/>
    </c:import>
</div>
</body>
</html>

