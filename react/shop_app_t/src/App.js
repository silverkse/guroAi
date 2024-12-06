import logo from "./logo.svg";
import React from "react";
import "./App.css";
import "./style/Style.css";


function App() {
  const element = React.createElement(
    "h1",
    { className: "sample" },
    "내용입니다."
  );
  return element;
}

export default App;
