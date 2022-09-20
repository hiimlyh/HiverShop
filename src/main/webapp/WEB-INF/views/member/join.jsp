<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="resources/css/join.css">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@구글 공짜 폰트@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
  <!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
  <!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@우편번호 서비스@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  <script defer src="resources/js/join.js"></script>
  <script defer src="resources/js/address.js"></script>
  <title>호진샵 - 회원가입</title>

  <style>
    #myProgress {
      width: 100%;
      background-color: #ddd;
    }

    #myBar {
      width: 0%;
      height: 3px;
      background-color: black;
    }
  </style>

</head>





<body class="" style="">
  <div id="root">
    <div id="wrap">
      <div id="container" class="noFooter">
        <div class="container-box">
          <div class="bdsNavbar container-box-bar">
            <div class="divBlind"></div>
            <header class="navbar page-header false container-header">
              <div class="container-header-box">
                <div class="header-back-icon"><button type="button" name="back" id="backButton"><svg
                      class="svgIcon  icon-back-css" role="img" aria-label="뒤로가기" viewBox="0 0 24 24"
                      xmlns="http://www.w3.org/2000/svg" fill="none">
                      <path d="M15 5L8 12L15 19" stroke="#202429" stroke-width="1.5" stroke-linecap="round"
                        stroke-linejoin="round"></path>
                    </svg></button></div>
                <div class="mainTitle">
                  <h2>회원 가입</h2>
                </div>
                <div class="header-close-icon"><button type="button" name="close"><svg class="svgIcon icon-close-css"
                      role="img" aria-label="닫기" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" fill="none">
                      <path d="M5 5L19 19" stroke="#202429" stroke-width="1.5" stroke-linecap="round"
                        stroke-linejoin="round"></path>
                      <path d="M19 5L5 19" stroke="#202429" stroke-width="1.5" stroke-linecap="round"
                        stroke-linejoin="round"></path>
                    </svg></button></div>
              </div>
            </header>
          </div>
          <div id="myProgress">
            <div id="myBar"></div>
          </div>


          <!--section 휴대폰 번호 이름 입력하는 영역-->
          <form action="store.do" method="post">
            <section class="section section-wrap" id="sec1">
              <div class="section-header section-header-box">
                <div class="title-wrap section-title-wrap">
                  <h3 class="title display2 bold section-title-h3">이름과 휴대폰 번호를 알려주세요</h3>
                </div>
                <p class="subTitle body2 section-subTitle">입력하신 번호로 인증번호가 전송됩니다.</p>
              </div>
              <div class="section-body">
                <div class="l-flex">
                  <div class="field field-flex align-top section-body-box">
                    <div class="input-group section-body-group">
                      <div class="input input-rg e1w9qeub0  section-body-input">
                        <input type="text" placeholder="이름"
                               class="input-css" id="name" name="name" value="">
                        <input type="tel" placeholder="휴대폰 번호"
                          class="input-css" id="tel" name="tel" value="">
                      </div>
                      <div class="input-message-error"></div>
                    </div>
                  </div>

                </div>
                <div class="section-footer"><button type="button" id="sec1_btn" class="nextBtn" disabled=""><span
                      class="text button1 bold">다음</span></button></div>
            </section>

            <!--section 2번째 아이디 만들기 영역-->
            <section class="section section-wrap" id="sec2" style="display: none;">
              <div class="section-header section-header-box">
                <div class="title-wrap section-title-wrap">
                  <h3 class="title display2 bold section-title-h3">아이디를 입력해주세요</h3>
                </div>
                <p class="subTitle body2 section-subTitle">입력하신 아이디는 로그인시 사용됩니다.</p>
              </div>
              <div class="section-body">
                <div class="l-flex">
                  <div class="field field-flex align-top section-body-box">
                    <div class="input-group section-body-group">
                      <div class="input input-rg e1w9qeub0  section-body-input">
                      
                      <input type="text" placeholder="아아디"
                          class="input-css" value="" id="id" name="id">
                      
                      
                      </div>
                      <div class="input-message-error"></div>
                    </div>
                  </div><button type="button" class="btnRg btnCheck" id="checkId" disabled=""><span
                      class="text button2 bold">중복<br>확인</span></button>
                </div>
              </div>
              <div class="section-footer"><button type="button" id="sec2_btn" class="nextBtn" disabled=""><span
                    class="text button1 bold">다음</span></button></div>
            </section>
            <!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@section 2번째 아이디 만들기 영역 끝@@@@@@@@@@@@@@@@@@@@@@@-->


            <!--section 3번째 비밀번호 만드는 영역-->
            <section class="section section-wrap" id="sec3" style="display: none;">
              <div class="section-header section-header-box">
                <div class="title-wrap section-title-wrap">
                  <h3 class="title display2 bold section-title-h3">비밀번호를 입력해주세요.</h3>
                </div>
                <p class="subTitle body2 section-subTitle">계정의 비밀번호를 설정합니다.</p>
              </div>
              <div class="section-body">
                <div class="l-flex">
                  <div class="field field-flex align-top section-body-box">
                    <div class="input-group section-body-group">
                      <div class="input input-rg e1w9qeub0  section-body-input"><input type="password" id="pwd"
                          placeholder="비밀번호를 입력해주세요." class="input-css password" value="" name="pwd"></div>
                      <div id="passMsg"></div>
                    </div>
                    <div class="input-group section-body-group">
                      <div class="input input-rg e1w9qeub0  section-body-input"><input type="password" id="pwdCheck"
                          placeholder="비밀번호 재입력" class="input-css password" value="" name="password"></div>
                      <div id="passMsg2"></div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="section-footer"><button type="button" class="nextBtn" disabled="" id="sec3_btn"><span
                    class="text button1 bold">다음</span></button></div>
            </section>
            <!--@@@@@@@@@@@@@@@@@@@@section 3번째 비밀번호 만드는 영역 종료@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->

            
            
            <!--section 4번째 이메일 영역-->
            <section class="section section-wrap" id="sec4" style="display: none;">
              <div class="section-header section-header-box">
                <div class="title-wrap section-title-wrap">
                  <h3 class="title display2 bold section-title-h3">이메일을 알려주세요</h3>
                </div>
              </div>
              <div class="section-body">
                <div class="l-flex">
                  <div class="field field-flex align-top section-body-box">
                    <div class="input-group section-body-group">
                      <div class="input input-rg section-body-input"><input type="text" id="email" placeholder="이메일"
                          class="input-css" value="" name="email"></div>
                      <div id="emailMsg"></div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="section-footer"><button type="button" class="nextBtn" disabled="" id="sec4_btn"><span
                    class="text button1 bold">다음</span></button></div>
            </section>
            <!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@section 4번째 이메일 영역 끝@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
            
            
            <!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@section 주소 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
            <section class="section section-wrap" id="sec5" style="display: none;">
              <div class="section-header section-header-box">
                <div class="title-wrap section-title-wrap">
                  <h3 class="title display2 bold section-title-h3">주소를 입력하여주세요</h3>
                </div>
              </div>
              <div class="section-body">
                <div class="l-flex">
                  <div class="field field-flex align-top section-body-box">
                    <div class="input-group section-body-group">
                      <div class="input input-rg section-body-input">
                        <input type="text" id="sample6_postcode" placeholder="우편번호" class="input-css" value="" name="postcode">
                        <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
                        <input type="text" id="sample6_address" placeholder="주소" class="input-css" value="" name="sample6_address">
                        <input type="text" id="sample6_detailAddress" placeholder="상세주소" class="input-css" value="" name="sample6_detailAddress">
                        <input type="text" id="sample6_extraAddress" placeholder="참고항목" class="input-css" value="" name="sample6_extraAddress">
                        
                        </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="section-footer"><button type="button" class="nextBtn" disabled="" id="sec5_btn"><span
                    class="text button1 bold">다음</span></button></div>
            </section>
            
            <!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@section@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
            <section class="section section-wrap" style="display:none;" id="sec6">
              <div class="section-header ck-header">
                <div class="title-wrap ck-title-wrap">
                  <h3 class="title display2 bold ck-h3">이용 약관에 대한 동의가 필요해요</h3>
                </div>
              </div>
              <div class="section-body">
                <div class="ck-body">
                  <span class="checkbox css-q6wlmp">
                    <input type="checkbox" id="cbx_chkAll" name="all" class="" value="all">
                    <label for="cbx_chkAll">
                      <span><span class="body1 bold">아래 약관에 모두 동의합니다.</span></span></label></span>
                </div>
                <ul class="css-1eg0sp3">
                  <li><input type="checkbox" id="chk1" name="chk" value="">
                    <label for="user_age_check"><span class="body2">만 14세 이상입니다 (필수)</span></label>
                  </li>
                  <li><input type="checkbox" id="chk2" name="chk">
                    <label for="terms"><span class="body2">하이버 약관 동의 (필수)</span></label>
                  </li>
                  <li><input type="checkbox" id="chk3" name="chk">
                    <label><span class="body2">개인정보수집 및 이용에 대한 안내 (필수)</span></label>
                  </li>
                  <li><input type="checkbox" id="chk" name="chk">
                    <label for="privacy_collect_option"><span class="body2">개인정보수집 및 이용에 대한 안내
                        (선택)</span></label>
                  </li>
                  <li><input type="checkbox" id="chk" name="chk">
                    <label><span class="body2">이벤트/마케팅 수신 동의 (선택)<span class="caption1">세일 및 할인 혜택
                          정보를 받아보실 수 있어요.</span></span></label>
                  </li>
                  <li><input type="checkbox" id="chk" name="chk">
                    <label><span class="body2">야간 혜택 알림 수신 동의 (선택)</span></label>
                  </li>
                </ul>
              </div>
              <div class="section-footer"><button type="submit" class="nextBtn" disabled="" id="sec6_btn"><span class="text button1 bold">가입
                    완료</span></button></div>
            </section>
          </form>
        </div>
      </div>
    </div>
  </div>

</body>

</html>