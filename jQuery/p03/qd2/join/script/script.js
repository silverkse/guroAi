$(function() {

  $("div#header input[type=checkbox]").click(function(){
    let isChecked = $(this).prop("checked");
    $("div.chkArea input[type=checkbox]").prop("checked", isChecked);
  });

  
  $("div.chkArea input[type=checkbox]").click(function(){
    let chkBox1 = $("div.acceptList:eq(0) .chkArea input[type=checkbox]").prop("checked");
    let chkBox2 = $("div.acceptList:eq(1) .chkArea input[type=checkbox]").prop("checked");
    let chkBox3 = $("div.acceptList:eq(2) .chkArea input[type=checkbox]").prop("checked");
    if (!chkBox1 || !chkBox2 || !chkBox3 ) {
      $("div#header input[type=checkbox]").prop("checked", false);
    } else if (chkBox1 && chkBox2 && chkBox3) {
      $("div#header input[type=checkbox]").prop("checked", true);
    }
  });

  $("div#btnArea button").click(function(){
    let chkBox1 = $("div.acceptList:eq(0) .chkArea input[type=checkbox]").prop("checked");
    let chkBox2 = $("div.acceptList:eq(1) .chkArea input[type=checkbox]").prop("checked");
    if(!chkBox1 || !chkBox2) {
      alert("필수 약관 동의 필요");
    } else {
      location.href = "/join.html";
    }
  });


});