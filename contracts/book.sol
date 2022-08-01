// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;
import "./main.sol";
// hangout
contract hangout_book is hangout_content{
    // mapping (address=>uint) internal map_passBook;
    mapping (string => content_info) public book_list;
    function addContent(string memory _name,string memory _link,uint _rent_amount,uint _purchase_amount) public override checkOwner() returns(bool){
       content_info storage book= book_list[_name];
       book.link=_link;
       book.rent_amount=_rent_amount *1000000000000000000;
       book.purchase_amount=_purchase_amount *1000000000000000000;
       return true;
    }
    function del_Content(string memory _name) public checkOwner() override returns(bool){
        delete book_list[_name];
        return true;
    }
    function check_content_avaibility(string memory BN) public view override returns (content_info memory hh){
        require ((book_list[BN]).rent_amount!=0,"Book Not Available");
        return book_list[BN];
    }
    function purchase_content(string memory _name) public payable override  checkEther((book_list[_name]).purchase_amount) returns(string memory){
        emit passBook("BOOK",msg.sender,_name,(book_list[_name]).purchase_amount);
        // map_passBook[msg.sender]=(book_list[_name]).purchase_amount;
        return (book_list[_name]).link;
    }
    function rent_content(string memory _name) public payable override checkEther((book_list[_name]).rent_amount) returns(string memory){
        emit passBook("BOOK",msg.sender,_name,(book_list[_name]).rent_amount);
        // map_passBook[msg.sender]=(book_list[_name]).purchase_amount;
        return (book_list[_name]).link;// will use CAT function of IPFS 
    }
}