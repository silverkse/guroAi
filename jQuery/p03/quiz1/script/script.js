$(function() {
  $("div#btnArea>button").click(function() {
    let clickBtn = $(this).attr("id");

    let allChkBox = $("input[type=checkbox]");

    if (clickBtn == "allChk") {
      allChkBox.prop("checked", true);
    } else if (clickBtn == "noChk") {
      allChkBox.prop("checked", false);
    }
  });
});