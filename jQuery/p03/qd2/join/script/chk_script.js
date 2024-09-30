const value = opener.document.querySelector("#id").value;
document.querySelector("#cInput").value = value;

function fnIdChkClose() {
  window.close();
}

function fnSubmit() {
  const idVal = document.querySelector("#cInput").value;
  opener.document.querySelector("#id").value = idVal;
  window.close();
}

