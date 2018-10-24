<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">


function nickOverlapCheck(){
     var b_name = document.form1.b_name.value;
        /* $("#id").val(); */

      if(b_name == "") {
         b_name_label.style.color="red";
            $("#b_name_label").html("밴드이름을 입력해주세요.");
            $("#b_name").focus();
            return;
      }else{
            $("#b_name_label").html("");
      }
        
      var regExp_b_name = /^[\w\Wㄱ-ㅎㅏ-ㅣ가-힣]{2,20}$/;
      if (!regExp_b_name.test(b_name)) {
         $("#b_name_label").html("밴드이름을 특수문자 제외 2자 ~ 20자 형식으로 입력해주세요.");
            $("#b_name").focus();
         return;
      }	
      window.name = "parentForm";
      window.open("${path}/band/popup_checkNick/"+b_name, "chkForm", "width=600px, height=400px, top=300px, left=650px, resizable = no, scrollbars = no");
   }
   
function b_nameCheck(){
   var b_name_label = document.getElementById("b_name_label");
   var b_name = document.form1.b_name.value;
   var regExp_id = /^[a-z0-9_]{4,20}$/; 
   
   if ( !regExp_b_name.test($("#b_name").val())) {
      b_name_label.style.color="red";
      $("#b_name_label").html("4~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.");
         $("#b_name").focus();
         return;   
   }else{
      b_name_label.style.color="blue";
      $("#b_name_label").html("");
   }
}

function inputIdChk(){
   document.joinForm.idDuplication.value ="idUncheck";
}

</script>
</head>
<body>

     <div id="apply_div_title" ><br>
     <h1>밴드 창설 신청서</h1>
     <h6>밴드정보를 자세히 입력해주세요.</h6>
     </div>
<form name="form1" method="post" enctype="multipart/form-data">
<table class="table table-hover table-bordered" style="max-width:100%; margin:0 auto; ">      
   <tbody>   
   <tr>  
      <td style="width: 200px;">닉네임</td>      
      <td><input  style="width: 100%;" class="form-control" id="b_leaderNick" name="b_leaderNick" value="${nickName}" readonly="readonly"></td>
   </tr>
   <tr>
      <td>밴드이름</td>
      <td><input  style="width: 30%;" class="form-control" id="b_name" name="b_name" onchange="b_nameCheck()" onkeydown="inputIdChk()">
          <input class="btn" class="form-control" style="width: 100px;" type="button"  onclick="nickOverlapCheck()" value="중복체크"  ></div>
           <label id="b_name_label"></label><br><br></td>
   </tr>
  
 
   <tr>
        <td>밴드소개</td>
        <td><textarea style="width: 100%;" rows="10"  name="description" id="description"></textarea>
   </tr>
   <tr>
      <td>밴드로고</td>
      <td>
         <input type="file" name="imgFile" id="imgFile">
      </td>
   </tr>   
   </tbody>        
</table>
</form>
<div style="text-align: center;">
<input class="btn btn-default" type="button" value="보내기" id="btnInsert">
</div>
</body>
</html>