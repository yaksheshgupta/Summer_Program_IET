import React from "react";
export default function nav(){
    return(
        <div >
            <ul className="navname ">
                <li style={{marginLeft:100}}>
                    Hangout
                </li>
            <div className="dropdown" style={{marginLeft:300}}>
            <button className="dropbtn">Features</button>
            <div className="dropdown-content" style={{minWidth: 190}}>
                    <a href="#">Music</a>
                    <a href="#">Video</a>
                    <a href="#">Books</a>
            </div>
            </div>
            <div className="dropdown" style={{marginLeft:60}}>
            <button className="dropbtn">About Us</button>
            <div className="dropdown-content" style={{minWidth: 190}}>
                    <a href="https://github.com/yaksheshgupta/Summer_Program_IET">This Repo</a>
            </div>
            </div>
            <div className="dropdown" style={{marginLeft:70}}>
            <button className="dropbtn">Contact Us</button>
            <div className="dropdown-content" style={{minWidth: 190}}>
                    <a href="https://www.linkedin.com/in/yakshesh-gupta-254643230/">LinkedIn</a>
                    <a href="https://twitter.com/GuptaYakshesh">Twitter</a>
                    <a href="https://github.com/yaksheshgupta">GitHub</a>
                    <a href="https://www.instagram.com/yakshesh_g/">Instagram</a>
            </div>
            </div>
                   
            <div className="dropdown" style={{marginLeft:50}}>
            <form>
            <input type="text" id="search" placeholder="Search.." />
            </form>
            </div>
            <div className="dropdown" style={{marginLeft:30}}>
            <button className="dropbtn">Connect Wallet</button>
            </div>
            </ul>
        </div>
    )
}