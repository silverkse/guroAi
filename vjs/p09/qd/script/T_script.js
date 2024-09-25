// 아이디 중복확인 팝업 시작 //
let dupChkPop;

const dupChkDom = document.querySelector("#dupChkBtn");
let scrWid = screen.width;
let scrHei = screen.height;
let popWid = 400;
let popHei = 300;
let leftPos = (scrWid-popWid) / 2;
let topPos = (scrHei-popHei) / 2;
dupChkDom.addEventListener("click", function() {
  let uri = "T_idDupChk.html";
  let alias = "";
  let spec = "width="+popWid+"px, ";
  spec += "height="+popHei+"px, ";
  spec += "left="+ leftPos +"px, ";
  spec += "top="+ topPos +"px";
  dupChkPop = window.open(uri, alias, spec);
});

function popClose() {
  window.close();
}
// 아이디 중복확인 팝업 끝 //
