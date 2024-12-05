import React from "react";

function Book(props) {
  return (
    <div>
      <h1>{`도서명 : ${props.name}`}</h1>
      <h1>{`페이지 정보 : ${props.numOfPage}`}</h1>
      <hr />
    </div>
  );

}


export default Book;
// 모듈명으로 다른 파일에서 사용할 수 있게 함