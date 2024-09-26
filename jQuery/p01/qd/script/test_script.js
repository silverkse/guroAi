$(function () {

  $("button").click(function(event){
    let btnType = event.target.id;
    console.log(btnType);
  });

  // fade Toggle 적용 시작
  $("button#fadeBtn").click(function () {
    $("div#target").text("Fade").fadeToggle(3000, function () {
      $("div#target").fadeToggle(3000);
    });
  });
  // fade Toggle 적용 끝

  // Slide Toggle 적용 시작
  $("button#slideBtn").click(function () {
    $("div#target").text("Slide").slideToggle(3000, function () {
      $("div#target").slideToggle(3000);
    });
  });
  // Slide Toggle 적용 끝

  // Toggle 적용 시작
  $("button#toggleBtn").click(function () {
    $("div#target").toggle(3000, function () {
      $("div#target").toggle(3000);
    });
  });
  // Toggle 적용 끝

  // Animate 적용 시작
  $("button#animateBtn").click(function () {
    $("div#target").animate({ "left": "20%" },
      3000,
      function () {
      $("div#target").animate({ "left": "50%" },
        3000);
    });
  });
  // Animate 적용 끝

});