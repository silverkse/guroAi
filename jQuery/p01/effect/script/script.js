$(function() {
  // 1차 기능 + 추가 기능
  $("button").click(function(){
    $("span").animate(
      { "margin-left": "100px"},
      3000,
      function() {
        $(this).css({"margin-left": "0"});
      }
    );
    // 인수 => CSS, Duration, CallBack
    //              적용시간  종료즉시 실행
  });
});