$(function() {

  // GNB 메뉴 시작
  $("li.mainLi").mouseenter(function() {
    // alert("OK");
    $(this).children("ul.subMenu").stop().slideDown(400);
    console.log("OK");
  }).mouseleave(function() {
    $(this).children("ul.subMenu").stop().slideUp(400);
  }) ;
  // GNB 메뉴 끝

  // 슬라이드 쇼 시작
  setInterval(fnSlide, 5000);
  function fnSlide() {
    $("#slideFrame").animate(
      {"margin-left" : "-1200px"},
      1000,
      function() {
        $("#slideFrame>a:first-child").insertAfter("#slideFrame>a:last-child");
        $(this).css({"margin-left": 0});
      }
    );
  }

  // 슬라이드 쇼 끝

  // 레이어 팝업 시작
$("#txtPop").click(function () {
  $("#layerBG").show();
});
$("#closeBtn").click(function () {
  $("#layerBG").hide();
});
  // 레이어 팝업 끝

});