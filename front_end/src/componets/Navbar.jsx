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

            </div>
            <div className="dropdown" style={{marginLeft:70}}>
            <button className="dropbtn">Contact Us</button>
            </div>
                   
            <div className="dropdown" style={{marginLeft:100}}>
            <button className="dropbtn">Connect Wallet</button>
            </div>
            </ul>
        </div>
    )
}