$(function () {

  // header gnb 메뉴 설정
  $("#mainMenu > li.mainLi").mouseover(function() {
    $(this).find("ul.subMenu").stop().slideDown(500);
  });

  $("#mainMenu > li.mainLi").mouseleave(function () {
    $(this).find("ul.subMenu").stop().slideUp(500);
  });


  // slide show 설정
  const showSize = $("div#showFrame").width();

  function slideShow() {
    $("div#slideFrame").animate({
      "left": -showSize+"px"},
      2000,
      function() {
        $(this).children("a:first").insertAfter("a.slideImg:last");
        $(this).css({"left": 0});
      }
    );
  }

  setInterval(slideShow, 5000);


  // popup layer 설정
  $("div#noticeList a").click(function(){
    if ($(this).index() == 0) {
      $("div#layerPopup").show();
    } else {
      alert("준비중입니다.")
    }
  });

  $("div#popupBtnArea button").click(function(){
    $("div#layerPopup").hide();
  });

});