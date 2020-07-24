import React, {setState} from "react"
import {Col, Row} from "react-bootstrap"



const Curses = (props) => {
    
 
 
 
    return(


              <div className="card">
                
                <div className="card-header text-center">
    <h4 className="card-title mb-0"><a href="student-take-course.html">{props.curses.name}</a></h4>
                
                </div>
                <a href="student-take-course.html">
                <img src={props.curses.photo} alt="Card image cap" style={{width: "100%" }} />
                </a>
                <div className="card-body">
                    
                        {props.curses.description}
                    
                </div>
            </div>
        
 
 )
 
}

export default Curses;