import React from "react";
import Goods from "./Goods";

function Market(props) {
  const num1 = 3;
  const num2 = 1;
  const num3 = 1;
  return (
    <div>
      <Goods name="오렌지" num={num1} priceSum={num1 * 1200} />
      <Goods name="우유" num={num2} priceSum={num2 * 2100} />
      <Goods name="샌드위치" num={num3} priceSum={num3 * 4000} />
    </div>
  )
}

export default Market;
