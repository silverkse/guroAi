$(function () {

  // 전체 체크 설정 시작
  $("button#chkSetBtn").click(function() {

    $("fieldset input[type=checkbox").prop("checked", true);

  });

  // 전체 체크 해제 시작
  $("button#chkClearBtn").click(function () {

    $("fieldset input[type=checkbox").prop("checked", false);

  });


});