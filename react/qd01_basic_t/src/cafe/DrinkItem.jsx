import React from "react"

// 하위 컴퍼넌트
function DrinkItem(props) {

  return (
    <div className="drinkItem">
      <img
        src={process.env.PUBLIC_URL + props.srcImg}
        alt={props.srcAlt}
      />
      <h3>{props.h3Text}</h3>
      <p>{props.pText}</p>
    </div>
  );
}

export default DrinkItem;