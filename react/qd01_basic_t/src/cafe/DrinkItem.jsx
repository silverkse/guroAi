import React from "react"

// 하위 컴퍼넌트
function DrinkItem(props) {

  return (
    <div className="drinkItem">
      <img
        src={process.env.PUBLIC_URL + "/images/yellow.gif"}
        alt="레몬 브리즈 이미지"
      />
      <h3>레몬 브리즈</h3>
      <p>
        허브, 미네랄, 부드러운 감귤에 레몬을 섞은 비타민이 풍부한 최고의 음료로
        하루 종일 면역 계통을 최상의 상태로 유지할 수 있어요.
      </p>
    </div>
  );
}

export default DrinkItem;