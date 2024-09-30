$(function(){
  $("#txtArea").keyup(function() {
    let txtLen = $(this).val().length;
    $("#txtLen").text(txtLen);
  });
});