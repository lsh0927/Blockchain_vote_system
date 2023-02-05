pragma solidity ^0.4.0;

contract SimpleStorage {
    uint storedData;

    function set(uint x) public {
        storedData = x;
    }

    function get() public view returns (uint) {
        return storedData;
    }
}
//solidity 0.4.0 버전을 기준으로 작성
// SimpleStorage라는 컨트랙트 한 개를 포함
// storedData라는 상태 변수를 선언
// set을 통해서 값을 저장
// get을 통해서 저장된 값을 확인