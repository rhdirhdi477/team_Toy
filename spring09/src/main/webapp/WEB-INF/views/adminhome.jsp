<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<html>
<head>
<title>Toy Story</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open Sans">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
h1,h2,h3,h4,h5,h6 {font-family: "Oswald"}
body {font-family: "Open Sans"}

</style>	
<%@ include file="include/header.jsp" %>
<%@ include file="include/admin_menu.jsp" %>	
</head>
<body>
<!-- Header -->
  <header class="w3-container w3-center w3-padding-48 w3-white">
    <h1 class="w3-xxxlarge"><b>Toy Story</b></h1>
    <h6>Welcome your visit <span class="w3-tag">Future FIGURE SHOP</span></h6>
  </header>

  <!-- Image header -->
  <header class="w3-display-container w3-wide" id="home">
    <img class="w3-image" src="${path}/images/iron1.png" alt="Fashion Blog" width="1600" height="1060">
    <div class="w3-display-left w3-padding-large">
      <h1 class="w3-text-white">Future</h1>
      <h1 class="w3-jumbo w3-text-white w3-hide-small"><b>FIGURE SHOP</b></h1>
      <h6><button class="w3-button w3-white w3-padding-large w3-large w3-opacity w3-hover-opacity-off" onclick="document.getElementById('subscribe').style.display='block'">New Arrivals</button></h6>
    </div>
  </header>


 <!-- Grid -->
 
  <div class="w3-row w3-padding w3-border">

    <!-- Blog entries -->
    <div class="w3-col l8 s12">
    
      <!-- Blog entry -->
      <div class="w3-container w3-white w3-margin w3-padding-large">
        <div class="w3-center">
          <h3>COMMING SOON Joker</h3>
          <h5> <span class="w3-opacity">November , 2018</span></h5>
        </div>

        <div class="w3-justify">
          <img src="${path}/images/joker.jpg" alt="Girl Hat" style="width:100%" class="w3-padding-16">
          <p><strong>최악의 악당 조커!</strong> 배트맨 시리즈사상 가장 위험한 악당 조커! 배트맨과 고담시를 위협하기위해 11월에 그가 찾아옵니다.</p>
          <p class="w3-left"><button class="w3-button w3-white w3-border" onclick="likeFunction(this)"><b><i class="fa fa-thumbs-up"></i> Like</b></button></p>
          <p class="w3-right"><button class="w3-button w3-black" onclick="myFunction('demo1')" id="myBtn"><b>Replies  </b> <span class="w3-tag w3-white">1</span></button></p>
          <p class="w3-clear"></p>
          <div class="w3-row w3-margin-bottom" id="demo1" style="display:none">
            <hr>
              <div class="w3-col l2 m3">
                <img src= "${path}/images/java.png"style="width:90px;">
              </div>
              <div class="w3-col l10 m9">
                <h4>Java김시현 <span class="w3-opacity w3-medium">october 3, 2018, 6:32 PM</span></h4>
                <p>영화속 익살스러운 조커의 모습이 피규어로 형상화되면 어떤 모습일지 기대 됩니다!</p>
              </div>
          </div>
        </div>
      </div>
      <hr>

      <!-- Blog entry -->
      <div class="w3-container w3-white w3-margin w3-padding-large">
        <div class="w3-center">
          <h3>Hit Product</h3>
          <h5>Bat Man <span class="w3-opacity">어둠의 수호자</span></h5>
        </div>

        <div class="w3-justify">
          <img src="${path}/images/batman.jpg" alt="Bat man" style="width:100%" class="w3-padding-16" >
          <p><strong>고담시의 영웅 배트맨!</strong>밤의 기사 ‘배트맨’의 완벽한 형상화 </p>
          <p>범죄와 부패, 탐욕의 도시 ‘고담시’에서 활약하는 어둠의 수호자 </p>
          <p> 지난해 많은 사랑을 받았던 배트맨 피규어가 재입고 되었습니다.  </p>
          <p class="w3-left"><button class="w3-button w3-white w3-border" onclick="likeFunction(this)" id="#btnBatmanShop"><b><i class="fa fa-thumbs-up"></i> 배트맨 피규어 바로가기</b></button></p>
          <p class="w3-right"><button class="w3-button w3-black" onclick="myFunction('demo2')"><b>Replies  </b> <span class="w3-tag w3-white">1</span></button></p>
          <p class="w3-clear"></p>
          
          <!-- Example of comment field -->
          <div id="demo2" style="display:none">
            <div class="w3-row">
              <hr>
              <div class="w3-col l2 m3">
                <img src="${path}/images/men.jpg" style="width:90px;">
              </div>
              <div class="w3-col l10 m9">
                <h4>지나가던 행인 <span class="w3-opacity w3-medium">September 27, 2018, 3:32 PM</span></h4>
                <p>배트맨 피규어 하나더 구입해야 겠어요.</p><br>
              </div>
            </div>
           
          </div>
        </div>
      </div>

      <!-- Blog entry -->
      <div class="w3-container w3-white w3-margin w3-padding-large">
        <div class="w3-center">
          <h3>Product</h3>
          <h5>SpiderMan, <span class="w3-opacity">April 7, 2017</span></h5>
        </div>

        <div class="w3-justify">
          <img src="${path}/images/spider.png" alt="Runway" style="width:100%" class="w3-padding-16">
          <p><strong>놓치지 마세요.</strong>&nbsp;재고량 5개!</p>
          <p>우리들의 거미영웅. 스파이더맨 피규어</p>
          <p class="w3-left"><button class="w3-button w3-white w3-border" onclick="likeFunction(this)"><b><i class="fa fa-thumbs-up"></i> Like</b></button></p>
          <p class="w3-right"><button class="w3-button w3-black" onclick="myFunction('demo3')"><b>Replies  </b> <span class="w3-tag w3-white">0</span></button></p>
          <p class="w3-clear"></p>
 
        </div>
      </div>
      
    <!-- END BLOG ENTRIES -->
    </div>

    <!-- About/Information menu -->
    <div class="w3-col l4">
      <!-- About Card -->
      <div class="w3-white w3-margin">
        <img src="${path}/images/wody.png" alt="Jane" style="width:100%" class="w3-white">
        <div class="w3-container w3-black">
          <h4>내 소개</h4>
          <p>안녕 내이름은 우디야! 앤디의 최고의 친구지.</p>
          <p>너랑도 친구가 되고싶어!</p>
        </div>
      </div>
      <hr>

      

      <div class="w3-white w3-margin">
        <div class="w3-container w3-padding w3-black">
          <h4>Sale</h4>
        </div>
     <div class="w3-col s6">
        <img src="${path}/images/set.png" alt="Men in Hats" style="width:100%" class="w3-white">
          <p><strong> <a href="#">토이스토리 미니 피규어 (5종세트)</a> </strong></p>
           <p style="text-decoration:line-through">50000원</p><p><strong>25000원</strong>
         </div>
        </div>
      </div>
    </div>

  <!-- END GRID -->
  </div>

<!-- END w3-content -->
</div>
<!-- Footer -->
<%@ include file="include/footer.jsp" %>

<script>

document.getElementById("myBtn").click();
function myFunction(id) {
    var x = document.getElementById(id);
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}

function likeFunction(x) {
    x.style.fontWeight = "bold";
    x.innerHTML = "✓ Liked";
}
</script>

</body>
</html>
