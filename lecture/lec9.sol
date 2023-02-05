pragma solidity >=0.7.0 <0.9.0;

//constructor(생성자): 변수의 값을 초기화 할때 이용

contract A{

    string public name;
    uint256 public age;


    constructor(string memory _name, uint256 _age){
        name=_name;
        age=_age;
    }
    function change(string memory _name, uint256 _age) public {
        name=_name;
        age=_age;
    }
}

contract B{
    A instance = new A ("Alice", 52);

    function change(string memory _name, uint256 _age) public {
       instance.change(_name,_age);
    }

    function get() public view returns (string memory,uint256){
        return (instance.name(),instance.age());
    }
}