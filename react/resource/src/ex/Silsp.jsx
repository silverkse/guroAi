import React from "react";
import "../assets/style/Style.css"
import cocktail from "../assets/bgImages/cocktail.gif"

function Silsp(props) {

  // // CSS 리터럴 객체
  // const myStyle = {
  //   color: "#08f",
  //   fontSize: "24px"
  // }

  const testStyle = {
    color: "#f80",
    // border-bottom-color: "#5a5"    // 이렇게 작성하면 안됨
    borderBottomColor: "#5a5",
  }

  // JSX
  return (
    // <p style={myStyle}>테스트</p>
    <>
      <p className="sample" style={testStyle}>테스트333</p>
      <p style={{
        color: "#f80",
        borderBottomColor: "#5a5",
        backgroundImage: `url(${cocktail})`,
        height: "100px"
      }}>
        test
      </p>
      <div>
        <img src="images/yellow.gif" alt="" />
        <img src={process.env.PUBLIC_URL + "/images/yellow.gif"} alt="" />
      </div>
    </>
  )
}

export default Silsp;