$(function(){

  // 우측 아이콘 클릭했을 때 요소 이동
  $("#rightIcon").click(function(){
    $("span.box:first").insertAfter("span.box:last");
  });

  // 좌측 아이콘 클릭했을 때 요소 이동
  $("#leftIcon").click(function(){
    $("span.box:last").insertBefore("span.box:first");
  });

  

});

function test() {
  $("span.box:last").insertBefore("span.box:first");
}
setInterval(test, 2000);