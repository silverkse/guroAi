$(function() {

  setInterval(fnSlide, 5000);

  
  function fnSlide() {
    $("div#slideFrame > a").eq(0).fadeOut(500,
      function() {
        $("#slideFrame>a:first-child").insertAfter("#slideFrame>a:last-child");
      }
    );
    // 사라진 이후 첫 번째 a 요소가 마지막 a 요소 다음으로 이동
    $("div#slideFrame > a").eq(1).fadeIn(1000);
  }

});