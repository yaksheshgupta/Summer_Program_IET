import React from "react";
export default function Two(){
    
    return(

        <div className="two">
            <div style={{color:"white",fontSize:50,paddingTop:40,textDecorationLine:"underline",fontFamily: "Lucida Console"}}>Features</div>
            <div className="grid">

            <div className="grid-item" >
            <i className='fas fa-video' style={{fontSize:100}}></i>
                <div>videpooooooo</div>
                <div className="butt" style={{marginTop:100}}>
                    Play Video
                </div>
            </div>
            <div className="grid-item" >
                <i className='fas fa-play' style={{fontSize:100}}></i>
                <div>Mussiiiiccccc </div>
                <div className="butt" style={{marginTop:100}}>
                    Play Music
                </div>
            </div>
            <div className="grid-item" >
            <i className='fas fa-font' style={{fontSize:100}}></i>
            <div>Boooookkkk</div>
                <div className="butt" style={{marginTop:100}}>
                    Play Book
                </div>
            </div>
            </div>
        </div>
        
    )
}
