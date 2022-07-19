// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;
// hangout
abstract contract hangout_content{
    address[] internal owner=[msg.sender];
    struct content_info{
        string link;
        uint rent_amount ;
        uint purchase_amount;
    }
    event passBook(string Content_Type, address indexed from,string indexed book_name,uint indexed amount);
    modifier checkOwner(){
        for(uint i=0;i<owner.length;i++){
            if (owner[i]==msg.sender)_;
        }
        revert("Not Permitted");
    }
    modifier checkEther(uint _amount){
        require(_amount==msg.value,"Amount paid is not valid");
        _;
    }
    function addOwner(address _address) public checkOwner(){
        owner[owner.length -1]=_address;
    }
    function addContent(string memory _name,string memory _link,uint _rent_amount,uint _purchase_amount) public virtual checkOwner{}
    function check_content_avaibility(string memory BN) public view virtual returns (content_info memory hh);
    function purchase_content(string memory _name) public payable checkEther(0) virtual returns(string memory){}
    function rent_content(string memory _name) public payable checkEther(0) virtual returns(string memory){}

}