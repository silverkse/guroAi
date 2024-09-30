$(function () {
  $("ul#mainMenu li").mouseenter(function () {
    $(this).find("ul.subMenu").stop(true, true).slideDown();
  });

  $("ul#mainMenu li").mouseleave(function () {
    $(this).find("ul.subMenu").stop(true, true).slideUp();
  });

});