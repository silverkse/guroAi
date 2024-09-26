$(function () {
  
  // Fade Toggle, VJS + jQuery
  let fadeBtnDom = document.querySelector("button:first-child");
  fadeBtnDom.addEventListener("click", function() {
    $("#resBox").text("Fade").fadeToggle(3000);
  });

  // Slide Toggle
  $("button:nth-child(2)").click(function() {
    $("#resBox").text("Slide").slideToggle(3000);
  });

  // Toggle jQuery
    $("button:nth-child(3)").click(function () {
      $("#resBox").text("Toggle").toggle(3000);
    });

  // Animate, jQuery
    $("button:last-child").click(function () {
      $("#resBox").text("animate")
      .animate({"margin-left":"-80px"},
         3000,
        function() {
          $(this).css({ "margin-left": "0" });
        });
    });

});