$(function() {

  setInterval(fnSlide, 5000);

  function fnSlide() {
  $("div#slideFrame").animate({"margin-left":"-1000px"},
    1000,
    function() {
      $("#slideFrame").children("a:first-child").insertAfter("#slideFrame>a:last-child");
      $("#slideFrame").css("margin-left", "0");
  });
  }

});