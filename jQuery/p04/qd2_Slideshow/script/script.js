$(function() {

  function slideShow() {
    // $("div#slideFrame").animate({"left" : "-1000px"}, 1000, function() {
    //   $("div#slideFrame a:first-child").insertAfter("div#slideFrame a:last-child");
    //   $(this).css({"left": "0"});
    // });

    // $("div#slideFrame").animate({"left" : "-1000px"}, 1000, function() {
    //   $(this).find("a").first().insertAfter($(this).children("a").last());
    //   $(this).css({"left" : "0"});
    // });
    
    $("div#slideFrame").animate({ "left": "-1000px" }, 1000, function () {
      $("div#slideFrame a:first").insertAfter("div#slideFrame a:last");
      $(this).css({ "left": "0" });
    });

  }

  setInterval(slideShow, 5000);

});