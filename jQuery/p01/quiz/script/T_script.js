$(function(){
  // 결과 2 구현 항목 적용
  $("span").css({
    "color": "#08f",
    "font-size": "20px",
    "border": "2px solid #f80"
  });

  // 결과 3 구현 항목 적용
  // prettier-ignore
  $("button").click(function() {
    $("span").text("가나다");
    $("span").css({
      "color": "#f80",
      "border-color": "#08f"
    });

  });
});