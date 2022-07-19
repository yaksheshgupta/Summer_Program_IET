// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.14;
import "./main.sol";
// hangout
contract hangout_music is hangout_content{
    // mapping (address=>uint) internal map_passBook;
    mapping (string => content_info) public music_list;
    function addContent(string memory _name,string memory _link,uint _rent_amount,uint _purchase_amount) public override checkOwner{
       content_info storage music= music_list[_name];
       music.link=_link;
       music.rent_amount=_rent_amount *1000000000000000000;
       music.purchase_amount=_purchase_amount *1000000000000000000;
    }
    function check_content_avaibility(string memory BN) public view override returns (content_info memory hh){
        require ((music_list[BN]).rent_amount!=0,"music Not Available");
        return music_list[BN];
    }
    function purchase_content(string memory _name) public payable override  checkEther((music_list[_name]).purchase_amount) returns(string memory){
        emit passBook("MUSIC",msg.sender,_name,(music_list[_name]).purchase_amount);
        // map_passmusic[msg.sender]=(music_list[_name]).purchase_amount;
        return (music_list[_name]).link;
    }
    function rent_content(string memory _name) public payable override checkEther((music_list[_name]).rent_amount) returns(string memory){
        emit passBook("MUSIC",msg.sender,_name,(music_list[_name]).rent_amount);
        // map_passmusic[msg.sender]=(music_list[_name]).purchase_amount;
        return (music_list[_name]).link;// will use CAT function of IPFS 
    }
}