$(function() {
  $("#mainMenu>li.mainLi").mouseenter(function() {
    $(this).children("ul.subMenu").stop().slideDown(600);
  });
  $("#mainMenu>li.mainLi").mouseleave(function() {
    $(this).children("ul.subMenu").stop().slideUp(200);
  });
});