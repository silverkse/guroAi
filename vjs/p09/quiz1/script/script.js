function fnRedirect() {
  let code = event.keyCode;
  if (code == 13) {
    const insDom = document.querySelector("#insert").value;
    location.href = insDom;
  }
}