<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js" integrity="sha512-WFN04846sdKMIP5LKNphMaWzU7YpMyCU245etK3g/2ARYbPK9Ub18eG+ljU96qKRCWh+quCY7yefSmlkQw1ANQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.10.4/gsap.min.js" integrity="sha512-VEBjfxWUOyzl0bAwh4gdLEaQyDYPvLrZql3pw1ifgb6fhEvZl9iDDehwHZ+dsMzA0Jfww8Xt7COSZuJ/slxc4Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.10.4/ScrollToPlugin.min.js" integrity="sha512-lZACdYsy0W98dOcn+QRNHDxFuhm62lfs8qK5+wPp7X358CN3f+ml49HpnwzTiXFzETs4++fADePDI+L2zwlm7Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.8/ScrollMagic.min.js" integrity="sha512-8E3KZoPoZCD+1dgfqhPbejQBnQfBXe8FuwL4z/c8sTrgeDMFEnoyTlH3obB4/fV+6Sg0a0XF+L/6xS4Xx1fUEg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script  defer src="resources/js/up.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
<script src="http://code.jquery.com/jquery-3.3.1.min.js">
</script>
<meta charset="utf-8">
<title>하이버 - 국내 최초 남자쇼핑앱</title>
<meta name="viewport"
   content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=3">
<style>
/* 영윤이가 확인완료 시작 */
#nav {
   text-align: center;
   position: relative;
   width: 1400px;
   left: 50%;
   margin-left: -700px;
}

#nav ul {
   top: 10px;
   margin: 0;
   z-index: 200;
   padding: 15px 5px;
   list-style: none;
   border-width: 100%;
}

#nav ul li {
   position: relative;
   font: bold 15px/45px sans-serif;
   display: inline-block;
   margin-right: -4px;
   background: #190033;
   cursor: pointer;
   color: #fff;
   width: 230px;
   height: 40px;
   transition: all 0.2s;
   -webkit-transition: all 0.2s;
   -moz-transition: all 0.2s;
   -o-transition: all 0.2s;
   transition: all 0.2s;
   display: inline-block;
}

#nav ul li:hover {
   background: #4c0099;
   color: #fff;
   width: 230px;
}

#nav ul li:hover ul {
   display: block;
   opacity: 1;
   visibility: visible;
}

#nav ul li ul {
   position: absolute;
   top: 39px;
   left: 0;
   width: 230px;
   padding: 0px;
   -webkit-box-shadow: none;
   -moz-box-shadow: none;
   box-shadow: none;
   display: none;
   opacity: 0;
   visibility: hidden;
   -webkit-transiton: opacity 0.2s;
   -moz-transition: opacity 0.2s;
   -ms-transition: opacity 0.2s;
   -o-transition: opacity 0.2s;
   -transition: opacity 0.2s;
   -webkit-box-shadow: none;
}

#nav ul li ul li {
   background: #190033;
   display: block;
   color: #fff;
   width: 230px;
}

#nav ul li ul li:hover {
   background: #4c0099;
}

#nav a {
   color: #fff;
   text-decoration: none;
}

.Mirror {
   border-top-left-radius: 5px;
   border-bottom-left-radius: 5px;
}

.liTop {
   border-top-left-radius: 5px;
   border-top-right-radius: 5px;
}

.liBot {
   border-bottom-left-radius: 5px;
   border-bottom-right-radius: 5px;
}

.contact {
   border-top-right-radius: 5px;
   border-bottom-right-radius: 5px;
}
img {
   width: auto;
   height: auto;
   border: 0
}
.topbanner {
   margin: 0 auto;
   padding: 0px;
   text-align: center;
}
/* 영윤이가 확인완료 끝 */

.Sec_header.fixed .Artc_main-tab .artc {
   position: fixed;
   left: 50%;
   top: 0;
   width: 100%;
   transform: translate(-50%)
}

.Sec_header * {
   font-family: Noto Sans KR, Spoqa Han Sans, Sans-serif;
   font-weight: 400;
   letter-spacing: 0
}

.Sec_header .artc {
   background-color: #fff
}

.Sec_header .inner {
   max-width: 1200px;
   margin: 0 auto
}

.Artc_header.searching .inner {
   padding: 14px 16px
}

.Artc_header.searching .site-name {
   display: none
}

.Artc_header.searching .form-search {
   padding: 0
}

.Artc_header.searching .form-search>div {
   padding-bottom: 2px;
   border-bottom: 2px solid #202429
}

.Artc_header.searching .form-search .inpt-search {
   opacity: 1
}

.Artc_header.searching .btn-search {
   margin: 0
}

.Artc_header.searching .nav-mine {
   display: none
}

.Artc_header.searching .dim {
   position: fixed;
   top: 0;
   bottom: 0;
   left: 0;
   right: 0;
   background: #000;
   opacity: .7;
   z-index: 21
}

.Artc_header .artc {
   position: relative;
   border-bottom: 1px solid #ebeef2;
   z-index: 22
}

.Artc_header .inner {
   display: -ms-flexbox;
   display: flex;
   padding: 16px;
   -ms-flex-wrap: nowrap;
   flex-wrap: nowrap;
   -ms-flex-pack: justify;
   justify-content: space-between;
   -ms-flex-align: center;
   align-items: center
}

.Artc_header .site-name {
   -ms-flex: 0 0 auto;
   flex: 0 0 auto;
   margin: 0
}

.Artc_header .site-name .link {
   overflow: hidden;
   display: block;
   width: 109px;
   height: 26px;
   text-indent: -999px;
   background: url("resources/img/header/logo.png")
      no-repeat 50%/cover
}

.Artc_header .form-search {
   display: -ms-flexbox;
   display: flex;
   -ms-flex: 1 1 auto;
   flex: 1 1 auto;
   padding: 0 12px;
   -ms-flex-pack: end;
   justify-content: flex-end
}

.Artc_header .form-search>div {
   -ms-flex: 1 1 304px;
   flex: 1 1 304px
}

.Artc_header .inpt-search {
   width: calc(100% - 33px);
   height: 28px;
   background-color: transparent;
   border: 0;
   border-radius: 0;
   -webkit-appearance: none;
   -moz-appearance: none;
   appearance: none;
   font-size: 16px;
   vertical-align: bottom;
   opacity: 0
}

.Artc_header .inpt-search::-ms-clear, .Artc_header .inpt-search::-ms-reveal
   {
   display: none;
   width: 0;
   height: 0
}

.Artc_header .inpt-search::-webkit-search-cancel-button, .Artc_header .inpt-search::-webkit-search-decoration,
   .Artc_header .inpt-search::-webkit-search-results-button, .Artc_header .inpt-search::-webkit-search-results-decoration
   {
   display: none
}

.Artc_header .btn-search {
   position: relative;
   width: 28px;
   height: 28px;
   padding: 0;
   border: 0;
   background: transparent
      url("resources/img/header/search_btn.png") no-repeat
      50%;
   background-size: 100% 100%;
   vertical-align: bottom;
   cursor: pointer
}

.Artc_header .nav-mine {
   -ms-flex: 0 0 auto;
   flex: 0 0 auto
}

.Artc_header .btn-cart, .Artc_header .btn-mypage {
   display: block;
   position: relative;
   width: 28px;
   height: 28px;
   background-repeat: no-repeat;
   background-position: 50%;
   background-size: 100% 100%;
   overflow: hidden;
   text-indent: -999px
}

.Artc_header .btn-cart {
   background-image: url("resources/img/header/cart.png")
}

.Artc_header .btn-cart .count {
   position: absolute;
   right: 0;
   top: 0;
   min-width: 14px;
   height: 12px;
   padding: 0 4px;
   background-color: #d3a164;
   border-radius: 6px;
   color: #fff;
   font-size: 8px;
   line-height: 12px;
   text-indent: 0;
   text-align: center
}

.Artc_header .btn-mypage {
   display: none;
   background-image: url("resources/img/header/my.png")
}

.Artc_header .btn-mypage .state {
   position: absolute;
   right: 0;
   top: 0;
   width: 22px;
   height: 15px
}

.Artc_main-tab {
   overflow: hidden
}

.Artc_main-tab .artc {
   position: relative;
   border-bottom: 1px solid #ebeef2
}

.Artc_main-tab .inner {
   padding: 0 6px
}

.Artc_main-tab .swiper-wrapper {
   -ms-flex-pack: justify;
   justify-content: space-between
}

.Artc_main-tab .swiper-slide {
   width: auto
}

.Artc_main-tab .swiper-slide.active, .Artc_main-tab .swiper-slide.active a.category,
   .Artc_main-tab .swiper-slide.on, .Artc_main-tab .swiper-slide.on a.category
   {
   color: #d3a164
}

.Artc_main-tab a.swiper-slide, .Artc_main-tab div.swiper-slide a.category
   {
   display: block;
   padding: 14px 10px;
   color: #000;
   font-size: 15px;
   font-weight: 700;
   line-height: 21px
}

.Artc_main-tab a.swiper-slide.on, .Artc_main-tab a.swiper-slide:hover,
   .Artc_main-tab div.swiper-slide a.category.on, .Artc_main-tab div.swiper-slide a.category:hover
   {
   color: #d3a164
}

.Artc_main-tab .wrap-items {
   position: absolute;
   left: 0;
   right: 0;
   z-index: 2;
   max-height: 0;
   background: hsla(0, 0%, 100%, .96);
   box-shadow: 0 3px 3px 2px rgba(0, 0, 0, .3);
   visibility: hidden;
   overflow: hidden;
   transition: visibility 0s, max-height .18s ease-in
}

.Artc_main-tab .wrap-items>ul {
   display: -ms-flexbox;
   display: flex;
   max-width: 1200px;
   margin: 0 auto;
   border-right: 1px solid #e1e1e1;
   -ms-flex-wrap: wrap;
   flex-wrap: wrap
}

.Artc_main-tab .items {
   position: relative;
   max-width: 16.66%;
   -ms-flex: 0 0 16.66%;
   flex: 0 0 16.66%;
   padding: 32px 20px 32px 21px;
   box-sizing: border-box
}

.Artc_main-tab .items:nth-child(n+7) {
   padding-top: 0
}

.Artc_main-tab .items:before {
   content: "";
   position: absolute;
   left: 0;
   top: 0;
   bottom: -300%;
   width: 1px;
   background-color: #e1e1e1
}

.Artc_main-tab .items .tit {
   display: block;
   margin: 0 0 12px;
   color: #1e1e1e;
   font-size: 16px;
   line-height: 1.4em;
   font-weight: 700
}

.Artc_main-tab .items .item {
   display: block;
   margin-top: 8px;
   color: #737373;
   font-size: 16px;
   line-height: 1.4em
}

.Artc_main-tab .items .item:hover {
   color: #1e1e1e
}



.Header_mobile-nav .btn-cart {
   overflow: hidden;
   display: block;
   position: absolute;
   right: 16px;
   top: 50%;
   width: 28px;
   height: 28px;
   text-indent: -999px;
   transform: translateY(-50%);
   background: url("/static/22.07.01/images/header/ic-cart.svg") no-repeat
      50%/100%
}

.Header_mobile-nav .btn-cart .count {
   position: absolute;
   right: 0;
   top: 0;
   min-width: 14px;
   height: 12px;
   padding: 0 4px;
   border-radius: 6px;
   font-size: 8px;
   line-height: 12px;
   text-indent: 0;
   text-align: center;
   color: #fff;
   background-color: #d3a164
}

.Header_mobile-nav .category-tit {
   width: 70%;
   min-height: 55px;
   margin: 0 auto;
   text-align: center
}

.Header_mobile-nav .category-tit>a {
   display: block;
   padding: 17px 0;
   font-size: 15px;
   font-weight: 700;
   color: #000
}

.Header_mobile-nav .category-tit>a:after {
   content: "";
   display: inline-block;
   width: 16px;
   height: 16px;
   margin: 2px 0 0 2px;
   vertical-align: top;
   background:
      url("/static/22.07.01/images/header/icons-16-pt-ic-drop-down-fill-black-16-pt.svg")
      no-repeat 50% 50%/cover
}


@media screen and (min-width:769px) {
   .Artc_header.searching .inner {
      padding: 32px 20px
   }
   .Artc_header.searching .nav-mine, .Artc_header.searching .site-name {
      display: block
   }
   .Artc_header.searching .dim {
      display: none
   }
   .Artc_header .inner {
      z-index: 2;
      padding: 32px 20px
   }
   .Artc_header .site-name .link {
      width: 158px;
      height: 60px
   }
   .Artc_header .form-search {
      padding: 0
   }
   /* 검색창 길이 조절 */
   .Artc_header .form-search>div {
      display: flex;
      flex-grow: 0;
      min-height: 40px;
      padding: 0;
      border-bottom: 2px solid #202429
   }
   .Artc_header .inpt-search {
      width: calc(100% - 40px);
      height: 38px;
      margin-top: -6px;
      vertical-align: top;
      opacity: 1
   }
   .Artc_header .btn-search {
      width: 32px;
      height: 32px;
      margin: 0;
      background-image:
         url("resources/img/header/search_btn.png");
      vertical-align: top
   }
   .Artc_header .nav-mine {
      margin-left: 60px
   }
   .Artc_header .btn-cart:nth-child(n+2), .Artc_header .btn-mypage:nth-child(n+2)
      {
      margin-left: 16px
   }
   .Artc_header .btn-cart {
      display: inline-block;
      width: 40px;
      height: 40px
   }
   .Artc_header .btn-cart .count {
      right: 3px;
      top: 2px
   }
   .Artc_header .btn-mypage {
      display: inline-block;
      width: 40px;
      height: 40px
   }
   .Artc_main-tab {
      overflow: visible
   }
   .Artc_main-tab .inner {
      padding: 0
   }

}
/* 맨위로 보내는 기능 */
#to-top{
  width:42px;
  height:42px;
  cursor:pointer;
  display: flex;
  justify-content: center;
  align-items: center;
  position: fixed;
  bottom: 30px;
  right: 30px;
  z-index:9; /*우선순위*/
}
</style>
</head>
<body>
   <div id="app">
      <div>
         <header id="header" class="Sec_header">
         <div class="topbanner">
            <a href="#"> <img
               src="resources/img/header/bannerImage.jpg"
               alt="이벤트 배너" style="width:1500px; height:100px;"></a>
         </div>
         <div class="Artc_header searching" style="min-height: 0px;">
            <div class="dim"></div>
            <div class="artc">
               <div class="inner">
                  <h1 class="site-name">
                     <a href="/" class="link">HIVER</a>
                  </h1>
                  <form method="get" action="/search" class="form-search">
                     <div>
                        <input type="search" name="q" aria-label="검색어 입력란" class="inpt-search">
                        <button type="submit" aria-label="검색" class="btn-search"></button>
                        <!---->
                     </div>
                  </form>
                  <nav class="nav-mine"> <a href="/cart" class="btn-cart">장바구니
                     <!---->
                  </a> 
                  <a href="login.do" class="btn-mypage"> 마이페이지</a></nav>
               </div>
            </div>
         </div>
         <!-- 여기서부터 메뉴 -->
         <div id="nav">
            <ul>
               <li class='Mirror'>패션
                  <ul>
                     <li onclick="">아우터</li>
                     <li onclick="">상의</li>
                     <li onclick="">셔츠</li>
                     <li onclick="">바지</li>
                     <li onclick="">모자</li>
                     <li onclick="">아이웨어</li>
                     <li onclick="">잡화</li>
                     <li onclick="">가방</li>
                     <li onclick="">언더웨어</li>
                     <li onclick="">시계</li>
                     <li class="liBot" onclick="l">기타</li>
                  </ul>
               </li>
               <li>신발
                  <ul>
                     <li onclick="">운동화</li>
                     <li onclick="">스니커즈</li>
                     <li onclick="">구두/로퍼</li>
                     <li onclick="">부츠/워커</li>
                     <li onclick="">샌들/슬리퍼</li>
                     <li onclick="">신발용품</li>
                     <li class="liBot"
                        onclick="">기타</li>
                  </ul>
               </li>
               <li>가방
                  <ul>
                     <li onclick="">백팩</li>
                     <li onclick="">메신저/크로스백</li>
                     <li onclick="">에코백</li>
                     <li onclick="">사무용/서류가방</li>
                     <li onclick="">클러치백</li>
                     <li onclick="">캐리어</li>
                     <li class="liBot"
                        onclick="">기타</li>
                  </ul>
               </li>
               <li>홈데코
                  <ul>
                     <li onclick="">가구</li>
                     <li onclick="">수납/정리</li>
                     <li onclick="">조명</li>
                     <li onclick="">침구</li>
                     <li onclick="">인테리어소품</li>
                     <li class="liBot" onclick="">기타</li>
                  </ul>
               </li>
               <li onclick="">브랜드</li>
               <li class='contact' onclick="location.href='board'">공지사항</li>
            </ul>
         </div>
         <!-- 여기까지 메뉴 -->
      </div>
   </div>
      <div id="to-top">
      <div><img src="resources/img/header/up.svg"></div>
   </div>
</body>
</html>