import React from "react";

// 하위 컴퍼넌트
function Goods(props) {
  return(
    <div>
      <p>{`${props.name} ${props.num}개 ${props.priceSum}원`}</p>
    </div>
  )
}

export default Goods;