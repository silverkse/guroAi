$(function () {
  $("tr").click(function() {
    let url = "https://www.naver.com";
    let name = "_parent";
    let popWid = 1000;
    let popHei = 500;
    let scrWid = window.screen.width;
    let scrHei = window.screen.height;
    let left = (scrWid - popWid) / 2;
    let top = (scrHei - popHei) / 2;
    let spec = `width=${popWid}, height=${popHei}, left=${left}, top=${top}`;
    window.open(url, name, spec);
  });
});