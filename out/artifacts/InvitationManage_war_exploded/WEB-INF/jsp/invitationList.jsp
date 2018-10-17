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
    <title>invitationList</title>
</head>
<body>
<input id="path" value="${pageContext.request.contextPath}" type="hidden">
    <div class="container">
        <h1>帖子列表</h1>
        <form action="${pageContext.request.contextPath}/invitationList.html">
            <input type="hidden" name="pageIndex" value="1">
            <span>帖子标题：</span>
            <input type="text" name="summary">
            <input type="submit" value="搜索">

            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>标题</th>
                    <th>摘要</th>
                    <th>作者</th>
                    <th>发布时间</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="invitation" items="${invitationList}">
                    <tr>
                        <td>${invitation.title}</td>
                        <td>${invitation.summary}</td>
                        <td>${invitation.author}</td>
                        <td>${invitation.createdate}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/getReplyDetailList.html?invid=${invitation.id}">查看回复</a>
                            <a href="javascript:;" class="del" name="${invitation.id}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

            <c:import url="rollpage.jsp">
                <c:param name="totalCount" value="${totalCount}"/>
                <c:param name="currentPageNo" value="${currentPageNo}"/>
                <c:param name="totalPageCount" value="${totalPageCount}"/>
                <c:param name="url"
                         value="${pageContext.request.contextPath}/invitationList.html?summary=${summary}&pageIndex"/>
            </c:import>
        </form>
    </div>
</body>
</html>
<script type="text/javascript">
    $(document).ready(function () {
        var path = $("#path").val();
        $(".del").on("click",function () {
            invId = $(this).attr("name");
            var delPath = path + "/delInv?invId=" + invId;
            if (confirm("确定删除帖子以及相关回复吗？")) {
                window.location.href = delPath;
            }
        })
    })
</script>
