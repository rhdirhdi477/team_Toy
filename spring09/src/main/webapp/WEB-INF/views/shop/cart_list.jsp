<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--views/shop/cart_list.jsp  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script type="text/javascript">
$(function(){
	$("#btnList").click(function(){
		//장바구니 목록으로 이동
		location.href="${path}/shop/product/list5.do";
	});
	$("#btnDelete").click(function(){
		if(confirm("장바구니를 비우시겠습니까?")){
			location.href="${path}/shop/cart/deleteAll.do";
		}
	});
});
</script>

<style >

#show_table{
	text-align: center; 
}
</style>
</head>
<body>
<%@ include file="../include/menu.jsp" %>

<div id="show_center">
<h2 align="center">장바구니</h2>
<c:choose>
  <c:when test="${map.count == 0}">
    장바구니가 비었습니다.
  </c:when>
  <c:otherwise>
    <form name="form1" method="post" 
    action="${path}/shop/cart/update.do">
      <table id="show_table" border="1" width="400px" align="center">
        <tr>
          <th><h4>상품명</h4></th>
          <th>단가</th>
          <th>수량</th>
          <th>금액</th>
          <th>&nbsp;</th>
        </tr>
        <c:forEach var="row" items="${map.list}">
        <tr>
          <td>${row.product_name}</td>
          <td>${row.price}</td>
          <td><input type="number" name="amount" 
          		value="${row.amount}">
              <input type="hidden" name="cart_id" 
                value="${row.cart_id}"></td>
          <td>${row.money}</td>
          <td>
          <c:if test="${sessionScope.userid != null }">
 <a href="${path}/shop/cart/delete.do?cart_id=${row.cart_id}">삭제</a>
          </c:if> 
          </td>     
        </tr> 
        </c:forEach>
        <tr>
          <td colspan="5" align="center">
            장바구니 금액 합계 : ${map.sumMoney}<br>
            배송료 : ${map.fee}<br>
            총합계 : ${map.sum}<br>
       <button id="btnUpdate" align="center">수정</button>
      <button type="button" id="btnDelete" align="center">장바구니 비우기</button>
      <button type="button" id="btnList" align="center">상품목록</button>
          </td>
        </tr>
      </table>
      
    </form>
  </c:otherwise>
</c:choose>


</div>
<br><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="../include/footer.jsp" %>
</body>
</html>