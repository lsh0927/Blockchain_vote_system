pragma solidity >=0.7.0 <0.9.0;

contract lec5{
    /*
    public: 모든 곳에서 접근 가능
    external: public 처럼 모든 곳에서 접근 가능 
    그러나 external이 정의된
    자기자신 컨트렉 내에서 접근 불가
    private: 오직 private이 정의된 자기
    컨트랙에서만 가능
    (private)이 정의된 컨트랙은 상속받은 자식도 불가능
    internal: private처럼 오직 internal이 정의된 자기 컨트랙 
    에서만 가능하고, internal이 정의된 컨트렉을 상속
    */

    uint256 public a=5;

    uint256 private a2=5;

    //private은 외부에서 접근 불가
}

contract Public_example{
    uint256 public a=3;
    function changeA(uint256 _value) external {
        a=_value;
    }
    function get_a() view external returns (uint256) {//view는 함수 밖의 변수를 읽을수 있으나 변경은 불가, 
    //pure는 둘다 안됨
        return a;
    }
}

contract Public_example2{
    Public_example instance =new Public_example(); //인스턴스화


    function changeA_2(uint256 _value) external{
        instance.changeA(_value);
    }
     function use_public_example_a() view external returns(uint256) {
        return instance.get_a();
    }

}
//lec6은 view와  pure에 대한 설명