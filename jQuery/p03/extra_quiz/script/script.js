$(function() {
  $("p").first().click(function(){
    $("div#clickArea div.numberBox").last().insertAfter("div#clickArea > p:first-child");
    // $("div#clickArea div.numberBox").first().insertBefore("div#clickArea > p:last-child");
  });
  $("p").last().click(function(){
    $("div#clickArea div.numberBox").first().insertBefore("div#clickArea > p:last-child");
    // $("div#clickArea div.numberBox").last().insertAfter("div#clickArea > p:first-child");
  });
});