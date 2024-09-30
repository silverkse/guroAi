$(function() {
  // $("textarea").on("input", function() {
  //   // console.log($(this).val().length);
  //   let keyCnt = $(this).val().length;
  //   // console.log(keyCnt);
  //   $("p>span").text(keyCnt);
  // });

  $("textarea").on("keydown keyup keypress", function () {
    // console.log($(this).val().length);
    let keyCnt = $(this).val().length;
    // console.log(keyCnt);
    $("p>span").text(keyCnt);
  });
});