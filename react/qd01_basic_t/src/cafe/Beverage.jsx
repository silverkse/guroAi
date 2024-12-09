import React from "react";
// import Yellow from "./images/yellow.gif"
import "../style/Style.css";
import DrinkItem from "./DrinkItem";

function Beverage(props) {
  return (
    <div id="elixirs" style={{ backgroundImage: "url(/images/cocktail.gif)" }}>
      <h1>
        주간 음료
        <br />
        스페셜
      </h1>
      <DrinkItem
        srcImg="/images/yellow.gif"
        srcAlt="레몬 브리즈 이미지"
        h3Text="레몬 브리즈"
        pText="허브, 미네랄, 부드러운 감귤에 레몬을 섞은 비타민이 풍부한 최고의
        음료로 하루 종일 면역 계통을 최상의 상태로 유지할 수 있어요."
      />
      <DrinkItem
        srcImg="/images/chai.gif"
        srcAlt="차가운 차이맛 음료 이미지"
        h3Text="차가운 차이맛 음료"
        pText="일반 차이티가 아닙니다. 이 음료는 마테차에 차이티 성분을 섞은 다음
          얼음에 카페인 맛이 나는 초콜릿을 살짝 넣은 음료입니다."
      />
      <DrinkItem
        srcImg="/images/black.gif"
        srcAlt="블랙 브레인 음료 이미지"
        h3Text="블랙 브레인 음료"
        pText="기억력이 좋아지면 좋겠죠? 검은 우롱차와 에스프레소를 살짝 섞어 만든
          블랙 브레인 음료를 드셔 보세요. 머리가 좋아지는 음료입니다."
      />

      <div id="etc">
        저녁시간에 언제든지 방문해서 이 음료뿐 아니라 다른 음료도 즐겨보세요.
      </div>
    </div>
  );
}

export default Beverage;
