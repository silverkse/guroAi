$(function () {
  $("li").mouseenter(function() {
    $(this).css({"font-weight" : "bold"});
  });
  $("li").mouseleave(function () {
    $(this).css({ "font-weight": "normal" });
  });

  $("li").click(function(){
    $("li").css({"font-weight" : "normal"});
    $(this).css({"font-weight" : "bold"});
  });

  $("div.selectMenu").click(function() {
    $("#divMenu div").even().css({"font-weight" : "normal"});
    $(this).css({"font-weight" : "bold"});
  });
});