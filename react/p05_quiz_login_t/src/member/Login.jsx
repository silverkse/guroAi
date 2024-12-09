import React from "react";
import "../assets/style/Style.css";
import "../assets/script/Script.js";

function chkVal() {
  let userID = document.querySelector("#userID").value;
  let userPW = document.querySelector("#userPW").value;

  if(userID === "") {
    alert("아이디를 입력해주세요");
  } else if (userPW === "") {
    alert("비밀번호를 입력해주세요");
  } else {
    alert("OK");
  }
}
function Login(props) {
  return (
    <div id="loginArea">
      <h1>로그인</h1>

      <form id="loginForm">
        <input type="text" className="inputBox" id="userID" placeholder="아이디 입력" autoFocus />
        <input type="password" className="inputBox" id="userPW" placeholder="비밀번호 입력" />
        <button type="button" id="loginBtn" onClick={chkVal} >로그인</button>
      </form>
    </div>
  );
}

export default Login;
