import React from "react";

function Login(props) {
  const [userId, setUserId] = React.useState("");
  const [userPw, setUserPw] = React.useState("");

  function btnClick(e) {
    e.preventDefault();

    if (userId.trim() == "") {
      alert("아이디를 입력해주세요.");
      document.querySelector("#userId").focus();
      return;
    }

    if (userPw.trim() == "") {
      alert("비밀번호를 입력해주세요.");
      document.querySelector("#userPw").focus();
      return;
    }

    alert("아이디와 비밀번호가 정상 입력되었습니다.");
    document.querySelector("button").focus();
    return;
  }

  return (
    <div id="wrap">
      <hr />
      <h1>{"로그인"}</h1>
      <div id="loginArea">
        <form action="#">
          <input
            type="text"
            name="userId"
            id="userId"
            placeholder="아이디 입력"
            onChange={(e) => setUserId(e.target.value)}
          />
          <input
            type="password"
            name="userPw"
            id="userPw"
            placeholder="비밀번호 입력"
            onChange={(e) => setUserPw(e.target.value)}
          />
          <button onClick={btnClick}>{"로그인"}</button>
        </form>
      </div>
      <hr />
    </div>
  );
}

export default Login;
