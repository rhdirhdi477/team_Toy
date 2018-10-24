<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp"%>




</head>
<body>



	<%@ include file="../include/menu.jsp"%>


<br>


	


<div align="center">
	<h2>상품목록</h2>

		<c:forEach var="row" items="${list3}">
		
				<a href="${path}/shop/product/detail/${row.product_id}">
				<img src="${path}/images/${row.picture_url}" width="300px" height="300px">
				</a> <!-- 관리자에게만 편집 버튼 표시 --> 
						<c:if test="${sessionScope.admin_userid != null }">
						
						<a href="${path}/shop/product/edit/${row.product_id}">[편집]</a>
					</c:if>
	
		</c:forEach>

</div>
	
	
</body>
</html>