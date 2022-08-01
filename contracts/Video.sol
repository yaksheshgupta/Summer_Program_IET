// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;
import "./main.sol";
// hangout
contract hangout_video is hangout_content{
    mapping (string => content_info) public video_list;
    function addContent(string memory _name,string memory _link,uint _rent_amount,uint _purchase_amount) public override checkOwner() returns(bool){
       content_info storage video= video_list[_name];
       video.link=_link;
       video.rent_amount=_rent_amount *1000000000000000000;
       video.purchase_amount=_purchase_amount *1000000000000000000;
       return true;
    }
    function del_Content(string memory _name) public checkOwner() override returns(bool){
        delete video_list[_name];
        return true;
    }
    function check_content_avaibility(string memory BN) public view override returns (content_info memory hh){
        require ((video_list[BN]).rent_amount!=0,"video Not Available");
        return video_list[BN];
    }
    function purchase_content(string memory _name) public payable override  checkEther((video_list[_name]).purchase_amount) returns(string memory){
        emit passBook("video",msg.sender,_name,(video_list[_name]).purchase_amount);
        // map_passvideo[msg.sender]=(video_list[_name]).purchase_amount;
        return (video_list[_name]).link;
    }
    function rent_content(string memory _name) public payable override checkEther((video_list[_name]).rent_amount) returns(string memory){
        emit passBook("video",msg.sender,_name,(video_list[_name]).rent_amount);
        return (video_list[_name]).link;// will use CAT function of IPFS 
    }
}