pragma solidity >=0.7.0 <0.9.0;

contract lect7{
    //storage: 대부분의 변수, 함수들이 저장되며, 영속적으로 저장이 되어
    //가스 비용이 비싸

    //memory: 함수의 파라미터, 리턴값, 레퍼런스 타입이 주로 저장
    //but영속적이지 않고 함수안에서만 쓰므로 가스 비용이 싸

    //colldata: 주로 external 함수의 파라미터에서 사용
    //stack: evm에서 stack data를 관리할 때 쓰는 영역 

    //function : string/
    function get_string(string memory _str) public pure returns (string memory){
        return _str;
    }

    function get_uint(uint256 _ui) public pure returns (uint256 ){
        return _ui;
    }


}