//SPOX-license-identifier GPL-30
pragma solidity >=0.7.0 <0.9.0;

contract lec2{
    //boolean
    //bytes

    bool public b= false;
    bool public b1= !false; //true
    bool public b2= false||true;
    bool public b3= false==true;
    bool public b4= false&&true;

    bytes4 public bt=0x12345678;
    bytes public bt2= "STRING";

    //address: 은행계좌를 개설하면 이 계죄를 통해 
    //돈을 주고 받음. 계좌번호 역할

    address public addr=0xf8e81D47203A594245E36C48e151709F0C19fBe8;

    //int vs uint

    //ints -2^7 ~ 2^7-1
    //uints 0~i^8-1

    int public it=4;
    uint256 public uit=1234123;

    uint8 public uit2=256; //범위를 넘김
}