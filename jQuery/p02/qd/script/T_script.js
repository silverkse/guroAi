// prettier-ignore
$(function() {    // jQuery 템플릿

  $("div#btnArea>button").click(function(){

    // 1. 멀티탭 구현 작업
    //    1) 버튼 클릭 => 모든 버튼을 선택되지 않은 상태로 만듬
    $("div#btnArea>button").css({
      "border" : "1px solid #aaa",
      "background-color" : "#ddd"
    });

    //    2) 클릭한 버튼(=선택된 버튼)만 배경 흰색, border-bottom 흰색 적용
    $(this).css({
      "border-bottom-color": "#fff",
      "background-color": "#fff"
    });

    // 2. 멀티탭의 콘텐츠 구현 작업
    //    1) 모든 콘텐츠를 표시한다.
    $("main#main div.tabContents").css({
      "display" : "none"
    });
    //    2) button 요소의 data- 커스텀 속성의 값을 사용하여, id 속성으로 활용한다.
    let idVal = $(this).attr("data-link");
    $("#"+idVal).show();

  });

});