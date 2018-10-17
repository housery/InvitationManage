<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'rollpage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<style type="text/css">
	 .pages{
	padding: 0px;
	margin: 0px;
	}
	.pages li{
	list-style: none;
	} 
	</style>
	

  </head>
  
  <body>
   	<div class="page-bar">
			<ul class="page-num-ul clearfix pages">
				<li><a href="javascript:;" class="btn btn-default">共${param.totalCount }条记录</a>&nbsp;&nbsp;<a href="javascript:void()" class="btn btn-default"> ${param.currentPageNo }/${param.totalPageCount }页
				</a>
				<c:if test="${param.currentPageNo > 1}">
					<a href="${param.url }=1" class="btn btn-default">首页</a>
					<a href="${param.url }=${param.currentPageNo-1}" class="btn btn-default">上一页</a>
				</c:if>
				<c:if test="${param.currentPageNo < param.totalPageCount }">
					
					 <a href="${param.url }=${param.currentPageNo+1 }" class="btn btn-default">下一页</a>  
					<a href="${param.url }=${param.totalPageCount }" class="btn btn-default">尾页</a>
				</c:if>
				&nbsp;&nbsp;
				</li>
			</ul>
		</div> 
  </body>
</html>
