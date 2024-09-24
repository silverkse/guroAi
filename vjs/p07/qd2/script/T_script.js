const ary = [
  "사과",
  "딸기",
  "수박",
  "고구마",
  "토마토",
  "귤",
  "옥수수",
  "감자",
  "복숭아",
  "포도",
];

let tag = "";
for (let i = ary.length-1; i >= 0; i--) {
  tag += "<div class ='box'>";
  tag += "<h4>"+ary[i]+"</h4>";
  tag += "<span>"+(i+1)+"</span>"
  tag += "</div>";
}
// "<div class ='box'><h4>OK1</h4><span>3</span></div>";
// tag += "<div class ='box'><h4>OK2</h4><span>4</span></div>";
const dom = document.querySelector("#galleryBBS")
dom.innerHTML = tag;