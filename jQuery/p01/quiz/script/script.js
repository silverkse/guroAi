$(function(){
  $("span").css({
    "color": "#08f",
    "font-size": "20px",
    "border": "2px solid #f80"
  });
  $("button").click(function (){
    $("span").text("가나다");
    $("span").css({
      "color": "#f80",
      "border-color": "#08f"
    });
  });
});