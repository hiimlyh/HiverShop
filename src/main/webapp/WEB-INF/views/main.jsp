<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>HiverWeb</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/css/main.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script defer src="resources/js/main.js"></script>
</head>
<body>
   <%@ include file="include/header.jsp"%>

   <!-- 슬라이드 섹션 -->
   <!-- 9/14 화면을 줄였을때 오른쪽 버튼이 사라지는 부분 찾아봐야함 -->
   <section>
   <div class="slideshow-container">

      <!-- 슬라이드 이미지 부분 -->
      <div class="mySlides fade">
         <div class="numbertext">1 / 6</div>
         <img src="resources/img/body/main_img1.jpg"
            style="width: 100%">
         <div class="text">HIVER</div>
      </div>

      <div class="mySlides fade">
         <div class="numbertext">2 / 6</div>
         <img src="resources/img/body/main_img2.jpg"
            style="width: 100%">
         <div class="text">HIVER</div>
      </div>

      <div class="mySlides fade">
         <div class="numbertext">3 / 6</div>
         <img src="resources/img/body/main_img3.jpg"
            style="width: 100%">
         <div class="text">HIVER</div>
      </div>

      <div class="mySlides fade">
         <div class="numbertext">4 / 6</div>
         <img src="resources/img/body/main_img1.jpg"
            style="width: 100%">
         <div class="text">HIVER</div>
      </div>

      <div class="mySlides fade">
         <div class="numbertext">5 / 6</div>
         <img src="resources/img/body/main_img2.jpg"
            style="width: 100%">
         <div class="text">HIVER</div>
      </div>

      <div class="mySlides fade">
         <div class="numbertext">6 / 6</div>
         <img src="resources/img/body/main_img3.jpg"
            style="width: 100%">
         <div class="text">HIVER</div>
      </div>

      <!-- 슬라이드 양옆으로 넘기기 -->
      <a class="prev" onclick="moveSlides(-1)">&#10094;</a>
      <a class="next" onclick="moveSlides(1)">&#10095;</a>
   </div>
   <br />

   <!-- 슬라이드 아래 버튼 -->
   <div style="text-align: center">
      <span class="dot" onclick="currentSlide(0)"></span> <span class="dot"
         onclick="currentSlide(1)"></span> <span class="dot"
         onclick="currentSlide(2)"></span> <span class="dot"
         onclick="currentSlide(3)"></span> <span class="dot"
         onclick="currentSlide(4)"></span> <span class="dot"
         onclick="currentSlide(5)"></span>
   </div>

   </section>

   <!-- 슬라이드 아래 부분 -->

   <!-- 주력 물품 영역 -->
   <hr class="noline">
   <section class="clothes">
   <h2>TODAY BEST</h2>
   <hr align="center">
   <img id="back1" src="resources/img/body/left.png"/>
   <div class="slide1">
      <ul>
         <li>
            <img src="resources/img/body/today/today1.jpeg" style="width:300px; height:300px; padding:5px;">
            <img src="resources/img/body/today/today2.jpeg" style="width:300px; height:300px; padding:5px;"> 
            <img src="resources/img/body/today/today3.jpeg" style="width:300px; height:300px; padding:5px;"> 
            <img src="resources/img/body/today/today4.jpeg" style="width:300px; height:300px; padding:5px;"> 
            <img src="resources/img/body/today/today5.jpeg" style="width:300px; height:300px; padding:5px;">
            <img src="resources/img/body/today/today6.jpeg" style="width:300px; height:300px; padding:5px;">
            <img src="resources/img/body/today/today7.jpeg" style="width:300px; height:300px; padding:5px;"> 
            <img src="resources/img/body/today/today8.jpeg" style="width:300px; height:300px; padding:5px;"> 
         </li>
         <li>
         </li>
      </ul>
   </div>
   <img id="next1" src="resources/img/body/right.png"/>
   <script>
         $(document).ready(function() {
            var imgs;
            var img_count;
            var img_position = 1;
            
            imgs = $(".slide1 ul");
            img_count = imgs.children().length;

            //버튼을 클릭했을 때 함수 실행
            $('#back1').click(function() { back(); });
            $('#next1').click(function() { next(); });
            
            function back() {
               if (1 < img_position) {
                  imgs.animate({ left : '+=1200px' });
                  img_position--;
               }
            }
            function next() {
               if (img_count > img_position) {
                  imgs.animate({ left : '-=1200px' });
                  img_position++;
               }
            }
         });
      </script>
      <!-- 신상 모아보기 -->
      
      
      
      <h2>신상 모아보기</h2>
   <hr align="center">
   <img id="back2" src="resources/img/body/left.png"/>
   <div class="slide2">
      <ul>
         <li>
            <img src="resources/img/body/today/today1.jpeg" style="width:300px; height:300px; padding:5px;">
            <img src="resources/img/body/today/today2.jpeg" style="width:300px; height:300px; padding:5px;"> 
            <img src="resources/img/body/today/today3.jpeg" style="width:300px; height:300px; padding:5px;"> 
            <img src="resources/img/body/today/today4.jpeg" style="width:300px; height:300px; padding:5px;"> 
            <img src="resources/img/body/today/today5.jpeg" style="width:300px; height:300px; padding:5px;">
            <img src="resources/img/body/today/today6.jpeg" style="width:300px; height:300px; padding:5px;">
            <img src="resources/img/body/today/today7.jpeg" style="width:300px; height:300px; padding:5px;"> 
            <img src="resources/img/body/today/today8.jpeg" style="width:300px; height:300px; padding:5px;"> 
         </li>
         <li>
         </li>
      </ul>
   </div>
   <img id="next2" src="resources/img/body/right.png"/>
   <script>
         $(document).ready(function() {
            var imgs;
            var img_count;
            var img_position = 1;
            
            imgs = $(".slide2 ul");
            img_count = imgs.children().length;

            //버튼을 클릭했을 때 함수 실행
            $('#back2').click(function() { back(); });
            $('#next2').click(function() { next(); });
            
            function back() {
               if (1 < img_position) {
                  imgs.animate({ left : '+=1200px' });
                  img_position--;
               }
            }
            function next() {
               if (img_count > img_position) {
                  imgs.animate({ left : '-=1200px' });
                  img_position++;
               }
            }
         });
      </script>
   </section>

   
   <!-- 홍보물 사진 영역 -->
   <div class="main-product-list">
      <div class="title">
         <h2>지금 뜨고있는 하이버 혜택</h2>
      </div>
         <ul class="main-event-list">
            <li class="event-item"><a class="event-img"
               style="background-image: url(resources/img/body/event_item1.jpg);">
            </a> 
            <li class="event-item"><a class="event-img"
               style="background-image: url(resources/img/body/event_item2.jpg);">
            </a>
            </li>
         </ul>
   </div>
   <hr class="noline">
   <%@ include file="include/footer.jsp"%>
</body>
</html>