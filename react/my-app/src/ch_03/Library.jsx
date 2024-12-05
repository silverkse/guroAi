import React from "react";
import Book from "./Book";

function Library(props) {
  return (
    <div>
      <Book name="나의 라임 오렌지 나무" numOfPage={303} />
      <Book name="오늘의 마음 날씨" numOfPage={368} />
    </div>
  );
}

export default Library;
// 모듈명으로 다른 파일에서 사용할 수 있게 함
