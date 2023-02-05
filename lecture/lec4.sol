pragma solidity >=0.7.0 <0.9.0;

contract lec4{
    /*
    function 이름() public, private, internal, external)
    //내용
    */

    uint256 public a=3;
    //1.파라미터, 리턴이 없는 function
    function changeA1() public{
        a=5;
    }
    //2. 파라미터는 있고, 리턴 값이 없는 function 정의

    function changeA2(uint256 _value) public{
        a=_value;
    }

    function changeA3(uint256 _value) public return(uint256){
        a=_value;
        return a;
    }

}