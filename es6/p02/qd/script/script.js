const resBtn = document.querySelector("#inputArea button");
resBtn.addEventListener("click", () => {
  let num = parseInt(document.querySelector("#inputArea input").value);

  // 입력 값이 3~9 사이가 아닐 때
  const msg = document.querySelector("#resArea p");
  if (!num || isNaN(num)) {
    msg.innerText = "숫자를 입력해주세요."
  } else if (num < 3 || num > 9) {
    msg.innerHTML = "입력 오류!<br>다시 입력해주세요.<br>(3~9 사이 값 입력)";
  } else {
    let startNum = 0;
    let text = "";
    for ( let i = 0; i < 10; i++) {
      for (let j = 0; j < 10; j++) {
        text += ++startNum + " ";
        if (startNum == num) {
          startNum = 0;
        }
      }
      text += "<br>";
    }
    text += `<br>Print OK!`;
    document.querySelector("#resArea p").innerHTML = text;
  }
  document.querySelector("#resArea button").style.display = "block";
});

// 재실행 버튼 초기화
const resetBtn = document.querySelector("#resArea button");
resetBtn.addEventListener("click", () => {
  document.querySelector("#resArea p").innerHTML = "";
  document.querySelector("#resArea button").style.display = "none";
  const inputField = document.querySelector("#inputArea input");
  inputField.value = "";
  inputField.focus();
});