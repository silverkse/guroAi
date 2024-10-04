function closed() {
  $("#modalWrap").hide();
}
function showModal(modalId) {
  $("#" + modalId).show();
}
//click 시 모달 열기
$("#aclick").click(function () {
  showModal("modalWrap");
  console.log("od");
});

$("#mdbutton").click(function () {
  closed();
});
