// 현재 시간 표시
function nowTime() {
  let today = new Date();

  let hours = ("0" + today.getHours()).slice(-2);
  let minutes = ("0" + today.getMinutes()).slice(-2);

  let nowTimeString = `${hours}:${minutes}`;
  document.querySelector("#nowTime").innerText = nowTimeString;
}

setInterval(nowTime, 1000);


const timeSetDom = document.querySelector("#timeSetBtn");
timeSetDom.addEventListener("click", () => {
  let now = new Date();

  let timeSetVal = document.querySelector("#timeSet").value;
  let [hours, minutes] = timeSetVal.split(":");
  let setTime = new Date(now.getFullYear(), now.getMonth(), now.getDate(), hours, minutes);
  
  if (now > setTime) {
    alert("현재 시간 이후를 설정해주세요");
    window.location.reload();
  } else {
    document.querySelector("#endTime span.time").innerText = timeSetVal;
    setInterval(remainTime, 1000);
  }
  
  function remainTime() {
    let now = new Date();
    let remainTime = setTime - now;

    if(remainTime < 0) {
      alert("시간종료!!");
      return;
    }
    const hours = Math.floor(remainTime % (1000 * 60 * 60 * 24) / (100 * 60 * 60));
    const minutes = Math.floor(remainTime % (1000 * 60 * 60) / (1000 * 60));
    const seconds = Math.floor(remainTime % (1000 * 60) / 1000);

    let timeText = `${hours}:${minutes}:${seconds}`;
    document.querySelector("#remainTime span.time").innerText = timeText;
  }
});

