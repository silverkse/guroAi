
$(function() {
  $("button").click(function(event) {
    let btnId = event.target.id;

    let showArea;
    let hideArea;
    let showBtn;
    let hideBtn;

    // document.querySelector("div#btnArea>button").style.backgroundColor="";

    if (btnId == "notice") {
      showArea = document.querySelector("#noticeArea");
      showBtn = document.querySelector("#btnArea button:first-child");
      hideArea = document.querySelector("#galleryArea");
      hideBtn = document.querySelector("#btnArea button:last-child");
    } else if (btnId == "gallery") {
      showArea = document.querySelector("#galleryArea");
      showBtn = document.querySelector("#btnArea button:last-child");
      hideArea = document.querySelector("#noticeArea");
      hideBtn = document.querySelector("#btnArea button:first-child");
    }

    showArea.style.display="block";
    hideArea.style.display="none";
    showBtn.style.backgroundColor="#fff";
    hideBtn.style.backgroundColor = "rgba(238, 238, 238, 0.5)";

  });
});