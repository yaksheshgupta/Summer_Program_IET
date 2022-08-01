// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
// hangout
abstract contract hangout_content{
    mapping(address=>uint) public owner;
    struct content_info{
        string link;
        uint rent_amount ;
        uint purchase_amount;
    }
    constructor(){
        owner[msg.sender]=1;
    }
    event passBook(string Content_Type, address indexed from,string indexed book_name,uint indexed amount);
    modifier checkOwner(){
        require(owner[msg.sender]!=0,"Not Permitted");
        _;
    }
    modifier checkEther(uint _amount){
        require(_amount==msg.value,"Amount paid is not valid");
        _;
    }
    function addOwner(address _address) public checkOwner() returns(bool){
        owner[_address]=1;
        return true;
    }
    function owner_possition(address _owner_address,uint num) public checkOwner() returns(bool){
        owner[_owner_address]=num;
        return true;
    }
    function addContent(string memory _name,string memory _link,uint _rent_amount,uint _purchase_amount) public virtual checkOwner() returns(bool){}
    function check_content_avaibility(string memory BN) public view virtual returns (content_info memory hh);
    function purchase_content(string memory _name) public payable checkEther(0) virtual returns(string memory){}
    function rent_content(string memory _name) public payable checkEther(0) virtual returns(string memory){}

}