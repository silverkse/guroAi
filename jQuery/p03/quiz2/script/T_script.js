// $(function() {
//   $("ul#mainMenu a").click(function() {
//     $("ul#mainMenu a").css({"font-weight" : "normal"});
//     $(this).css({"font-weight" : "bold"});
//   });

//   $("ul#mainMenu li").mouseover(function(){
//     $(this).children("a").css({"font-weight" : "bold"});
//   }).mouseout(function(){
//     $(this).children("a").css({"font-weight" : "normal"})});
// });

$(function() {
  $("ul#mainMenu li.mainLi").click(function() {
    $("ul#mainMenu li.mainLi").css({ "font-weight": "normal" });
    $(this).css({"font-weight" : "bold"});
  });
  $("ul#mainMenu li.mainLi").mouseover(function() {
    $(this).css({ "font-weight": "bold" });
  });
});