import React, {useState} from "react";

function Counter(props) {

  // let cnt = 0;     // 이렇게 하면, 버튼을 클릭해도 증가 값이 브라우저에 반영되지 않음
  let [cnt, setCount] = useState(0);

  return (
    <div>
      <p>총 {cnt}번 클릭했습니다.</p>
      {/* <button onClick={()=>(cnt + 1)}> */}    {/* 위에 주석한 일반 변수 사용 시 */}
      <button onClick={()=>setCount(cnt + 1)}>
        클릭
      </button>
    </div>
  )
}

export default Counter;