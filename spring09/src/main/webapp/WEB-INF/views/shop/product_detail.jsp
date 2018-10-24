<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>


</head>
<body>
<%@ include file="../include/menu.jsp" %>




<div align="center">
<h2>상품정보</h2>
<table>
 <tr>
  <td><img src="${path}/images/${dto.picture_url}" 
  width="500px" height="500px"></td>
  <td align="center">
    <table>
      <tr>
        <td><h3>상품명 </h3></td>
        <td><h3><input  name="userid" value="${dto.product_name}" readonly></h3></td>
      </tr>
      <tr>
        <td>PRICE </td>
        <td><h3><input width="5" height="5" name="userid" value="${dto.price}" readonly></h3></td>
      </tr>
      <tr>
        <td>INFORMATION </td>
        <td><textarea rows="5" cols="39" name="description" 
        id="description" readonly>${dto.description}</textarea></td>
      </tr>
      <tr> 
      	<td>QUANTITY </td>
      	<td colspan="2">
          <form name="form1" method="post" 
            action="${path}/shop/cart/insert.do">
            <h4>
            <input type="hidden" name="product_id" 
            value="${dto.product_id}">
            <select name="amount">
             <c:forEach begin="1" end="10" var="i">
               <option value="${i}">${i}</option>
             </c:forEach>
            </select>
            <input type="submit" value="BUY NOW"> 
            </h4> 
          </form>
        </td>
      </tr>
      </table>
      <br>
  </td>
 </tr>
 <table>
 <tr>
 <a><img src="${path}/resources/images/shopingtip.png" alt="" border="0" /></a>
 </tr>
 </table>
 
</table>

</div>
<%@ include file="../include/footer.jsp" %>

</body>
</html>