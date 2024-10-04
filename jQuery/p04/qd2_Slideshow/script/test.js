$(function () {
  function slide() {
    $("#slideFrame").animate({ "left": "-1000px" }, 1000, function () {
      $("#slideFrame div.box:first-child").insertAfter(
        "#slideFrame div.box:last-child"
      );
      $(this).css("left", "0");
    });
  }
  // slide();
  setInterval(slide, 3000);
});
