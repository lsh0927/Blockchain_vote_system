pragma solidity >=0.7.0 <0.9.0;
//하나의 컨트랙에서 다른 컨트랙으로 접근할때 인스턴스가 필요함
contract A{
    uint256 public a=5;

    function change(uint256 _value) public {
        a=_value;
    }
}

contract B{
    //인스턴스 형식
    A instance = new A();
    //-> 이렇게 인스턴스를 만들고 변수와 함수를 접근할 수 있음
    function get_A() public view returns(uint256){
        return instance.a();
    }

    function change_A(uint256 _value)public {
       instance.change(_value);
    }
}