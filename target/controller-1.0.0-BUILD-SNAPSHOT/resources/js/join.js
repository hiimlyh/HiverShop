let depth = 1;                              // 회원가입 Depth
let section_count = 0;                      // 회원가입 항목 개수.. ( 핸드폰, 아이디, 비밀번호, 이메일 등 )
let progress = 0;                           // depth별 진행률 계산


$(function () {
  section_count = $(".section").length;   // 회원가입 항목 개수..
  progress = 100 / section_count;

  // ########################################### 핸드폰번호 정규식 체크 ###########################################
  $("#tel").on('keydown', function (e) {
    // 숫자만 입력받기
    var k = e.keyCode;

    if ($(this).val().length >= 11 && k != 8 && ((k >= 48 && k <= 126) || (k >= 12592 && k <= 12687 || k == 32 || k == 229 || (k >= 45032 && k <= 55203)))) {
      e.preventDefault();
    }

    if ($(this).val() == '') return;

    phoneCheck(this);

  }).on('blur', function () { // 포커스를 잃었을때 실행합니다.
    phoneCheck(this);
  });

  $("#sec1_btn").click(function () {
    move();
    $("#sec1").hide();
    $("#sec2").show();
  });
  $("#sec2_btn").click(function () {
    move();
    $("#sec2").hide();
    $("#sec3").show();
  });
  $("#sec3_btn").click(function () {
    if (true == passwordCheck()) {
      move();
      $("#sec3").hide();
      $("#sec4").show();
    }
  });
  $("#sec4_btn").click(function () {
    move();
    $("#sec4").hide();
    $("#sec5").show();
  });
  $("#sec5_btn").click(function () {
    move();
    $("#sec5").hide();
    $("#sec6").show();
  });

  // ##################################################################################################


  $("#id").on('keyup', function (e) {
    if ($(this).val() != "") {
      $("#checkId").attr('disabled', false);
    } else {
      $("#checkId").attr('disabled', true);
    }
  });

  $("#checkId").click(function () {
    var userIdCheck = /^[A-Za-z0-9_\-]{5,20}$/;
    if (userIdCheck.test($("#id").val())) {
      $("#sec2_btn").attr('disabled', false);
    } else {
      alert('')
      // ### ajax 사용해서 아이디 중복체크하세요 여기서

      // ###
      $("#sec2_btn").attr('disabled', true);
    }
  });

  $(".password").on('keyup', function () {
    if (passwordCheck() == true) {
      if (validatePassword() == true) {
        $("#sec3_btn").attr('disabled', false);
      }
    }
  });
  //이메일이 올바르게 입력되면 버튼이 열림
  $("#email").on("keyup", function () {
    if (validateEmail() == true) {
      $("#sec4_btn").attr("disabled", false);
    }
  });
  $("#sample6_detailAddress").on("keyup",function(){
    if(addr()==true){
      $("#sec5_btn").attr("disabled",false);
    }
  });
  $("#email").keyup(function () {
    if (validateEmail()) {
      $("#email").css("border", "1px solid black");
      $("#emailMsg").html("<span class='emailSuccess'>이메일 양식이 올바릅니다.</span>");
    } else {
      $("#email").css("border", "1px solid red");
      $("#emailMsg").html("<span class='emailError'>이메일 양식이 올바르지 않습니다.</span>");
    }
  });
  $("#pwd").keyup(function () {
    if (validatePassword()) {
      $("#pwd").css("border", "1px solid black");
      $("#passMsg").html("<span class='emailSuccess'>비밀번호 양식이 올바릅니다.</span>");
    } else {
      $("#pwd").css("border", "1px solid red");
      $("#passMsg").html("<span class='emailError'>비밀번호 양식이 올바르지 않습니다.</span>");
    }
  })
  $("#pwdCheck").keyup(function () {
    if (passwordCheck()) {
      $("#pwdCheck").css("border", "1px solid black");
      $("#passMsg2").html("<span class='emailSuccess'>비밀번호가 일치합니다.</span>");
    } else {
      $("#pwdCheck").css("border", "1px solid red");
      $("#passMsg2").html("<span class='emailError'>비밀번호가 일치하지 않습니다....</span>");
    }
  })

  


  //페이지 좌측 상단에 < 검정색 마크가 있는데 클릭하면 뒤로 감.
  $("#backButton").click(function (e) {
    // 가장 처음 depth 일경우 이벤트 무시
    if (depth == 1) {
      e.preventDefault();
      return;
    }
    $("#sec" + depth).hide();
    $("#sec" + (depth - 1)).show();
    back();
  });
  //뒤로감@@@@@@@@@@@@@@@@@@@@@@@@@@

  //약관동의 체크박스 
  //이용약관동의 section에서 모두동의라는 체크박스 클릭시 전부 체크 하는 것
  $("#cbx_chkAll").click(function () { 
    if ($("#cbx_chkAll").is(":checked")){
      $("input:checkbox[name=chk]").prop("checked", true);
      $("#sec6_btn").attr("disabled",false)
    }
    else{ 
    $("input:checkbox[name=chk]").prop("checked", false);
    $("#sec6_btn").attr("disabled",true);
    }
  });

  $("input:checkbox[name=chk]").click(function () {
    var total = $("input:checkbox[name=chk]").length;
    var checked = $("input:checkbox[name=chk]:checked").length;

    if (total != checked) $("#cbx_chkAll").prop("checked", false);
    else $("#cbx_chkAll").prop("checked", true);
  });

  //(필수)라고 써진것들만 클릭해도 가입버튼이 활성화 됌
  $('input:checkbox[name="chk"]').on('click',function(){
    var ch1 = $('input:checkbox[id="chk1"]').is(":checked");
    var ch2 = $('input:checkbox[id="chk2"]').is(":checked");
    var ch3 = $('input:checkbox[id="chk3"]').is(":checked");
    if(ch1==true && ch2==true && ch3==true){
      $("#sec6_btn").attr("disabled",false)
    }else{
      $("#sec6_btn").attr("disabled",true)
    }
});
});


function move() {
  let elem = $("#myBar");                             // progress bar Element..
  let start_point = (depth - 1) * progress;           // progress bar 시작 진행률
  let end_point = depth * progress;                   // progress bar 종료 진행률
  let id = setInterval(frame, 10);
  function frame() {
    if (start_point >= end_point) {
      clearInterval(id);
    } else {
      start_point++;
      $(elem).width(start_point + "%");
    }
  }
  depth++;
}


function back() {
  let elem = $("#myBar");                             // progress bar Element..
  let start_point = (depth - 1) * progress;           // progress bar 시작 진행률
  let end_point = (depth - 2) * progress;             // progress bar 종료 진행률
  let id = setInterval(frame, 10);
  function frame() {
    if (start_point <= end_point) {
      clearInterval(id);
    } else {
      start_point--;
      $(elem).width(start_point + "%");
    }
  }
  depth--;
}


function phoneCheck(thi) {
  let val = thi.value;
  // 입력값이 있을때만 실행합니다.
  if (val != null && val != '') {
    // 총 핸드폰 자리수는 11글자이거나, 10자여야 합니다.
    if (val.length == 11 || val.length == 10) {
      // 유효성 체크
      var regExp_ctn = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})([0-9]{3,4})([0-9]{4})$/;
      if (regExp_ctn.test(val)) {
        // 유효성 체크에 성공하면 하이픈을 넣고 값을 바꿔줍니다.
        //  trans_num = trans_num.replace(/^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?([0-9]{3,4})-?([0-9]{4})$/, "$1-$2-$3");
        //  $(this).val(trans_num);

        $("#sec1_btn").attr('disabled', false);
      }
      else {
        $(thi).val($(thi).val().replace(/[^0-9]/g, ""));
        $(thi).focus();
      }
    }
    else {
      $(thi).val($(thi).val().replace(/[^0-9]/g, ""));
      $(thi).focus();
    }
  }
}

function validatePassword() {
  let id = $("#id").val();
  let pw = $("#pwd").val();
  let number = pw.search(/[0-9]/g);
  let english = pw.search(/[a-z]/ig);
  let spece = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
  let reg = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;

  if (pw.length < 8 || pw.length > 20) {
    // alert("8자리 ~ 20자리 이내로 입력해주세요.");
    return false;

  } else if (pw.search(/\s/) != -1) {
    // alert("비밀번호는 공백 없이 입력해주세요.");
    return false;

  } else if (number < 0 || english < 0 || spece < 0) {
    // alert("영문,숫자,특수문자를 혼합하여 입력해주세요.");
    return false;

  } else if ((number < 0 && english < 0) || (english < 0 && spece < 0) || (spece < 0 && number < 0)) {
    // alert("영문,숫자, 특수문자 중 2가지 이상을 혼합하여 입력해주세요.");
    return false;

  } else if (/(\w)\1\1\1/.test(pw)) {
    // alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
    return false;

  } else if (pw.search(id) > -1) {
    // alert("비밀번호에 아이디가 포함되었습니다.");
    return false;
  } else {
    // alert("비밀번호가 정상적으로 입력되었습니다.");
    return true;
  }
}

//이메일 정규식 체크
function validateEmail() {
  // 입력한 이메일값 받아옴
  var email = $("#email").val();
  // 정규식 조건이 골뱅이 점 컴이 들어가야함.
  var reg = /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
  if (reg.test(email)) {
    return true;
  } else {
    return false;
  }
}

//비밀번호를 입력한 값이 일치하는가 안하는가 확인하는 함수
function passwordCheck() {
  var p1 = $("#pwd").val();
  var p2 = $("#pwdCheck").val();
  if (p1 != p2) {
    return false;
  } else {
    return true;
  }
}
//상세 주소 값까지 입력을 하게되면 다음 버튼이 열림
function addr(){
  var addr = $("#sample6_detailAddress").val();
  if(addr ==''){
    return false;
  }else{
    return true;
  }
}





