let randomFlag = [];

const startBtnDom = document.querySelector("#startBtn");
startBtnDom.addEventListener("click", () => {
  random()
});

function random() {
  const ranInput = document.querySelectorAll(".randomArea input");
  ranInput.forEach((e, i) => {
    randomFlag[i] = setInterval(() => {
      e.value = Math.floor(Math.random() * 11);
    },
    100)
  });
}

// 이거 아닌 듯
const stopBtnDom = document.querySelectorAll(".randomArea button");
stopBtnDom.forEach((btn, i) => {
  btn.addEventListener("click", () => {
    const chk = document.querySelectorAll(".randomArea input");
    if(chk[0].value != chk[1].value && chk[1].value != chk[2].value && chk[0].value != chk[2].value) {
      clearInterval(randomFlag[i]);
    }
  });
});
