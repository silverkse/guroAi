$(function () {

  $("#chkAll").click(function() {
    // 정방향 전체 체크
    let chkVal = $(this).prop("checked");
    $(".agreeChk").prop("checked", chkVal);
  });

  // 역방향 체크 적용
  $(".agreeChk").click(function() {
    // alert($(".agreeChk").length);
    // .agreeChk의 개수 확인
    let cnt = $(".agreeChk").length;
    let chkAllData = false;
    let chkCnt = 0;

    // 모든 .agreeChk를 사용하여 순서대로 체크여부 점검
    // VJS의 순환제어문 for를 사용한 방법
    // for( let i = 0; i<cnt; i++ ) {
    //   // alert($(".agreeChk").eq(i).prop("checked"));
    //   if ($(".agreeChk").eq(i).prop("checked")) chkCnt++;
    // }

    // jQuery의 순환제어 메서드 each()를 사용한 방법
    // jQuery 순환제어 메서드(.each())를 사용한 작업
    $(".agreeChk").each(function () {
      if ($(this).prop("checked")) chkCnt++;
    });
    // this는 선택자의 모든 항목에 대해 순환

    if (chkCnt == cnt) chkAllData = true;
    $("#chkAll").prop("checked", chkAllData);
  });

  // 회원가입 약관 동의 유효성 검사
  $("#licenseJoinBtn").click(function() {
    let reqCnt = $(".chkReq").length;
    let reqChkCnt = 0;

    // VJS의 for문과 jQuery의 each() 메서드 비교
    // VJS for 문 사용
    // for ( let i = 0; i < reqCnt; i++ ) {
    //   let chkConfirm = $(".chkReq").eq(i).prop("checked");
    //   if (chkConfirm) reqChkCnt++;
    // }

    // each 메서드 적용
    // $(".chkReq").each(function () {
    //   if ($(this).prop("checked")) reqChkCnt++;
    // });
    
    // each 메서드 응용 적용
      // i = index, e = input 요소를 의미한다. 자체로 DOM이다.
    $(".chkReq").each(function (i, e) {
      console.log("i: " + i);
      console.log("e: " + e);
      console.log("------------");
      if ($(this).prop("checked")) reqChkCnt++;
    });
    // VJS의 for문과 jQuery의 each() 메서드 비교

    let msg = "";
    if (reqChkCnt == reqCnt) {
      msg = "OK";
    } else {
      msg = "필수약관 동의 필요";
    }
    alert(msg);
  });

});