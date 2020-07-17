import React, {setState} from "react"
import {Col, Row} from "react-bootstrap"


const none = document.getElementById("curse_data");
const data =  JSON.parse(none.getAttribute('data'));


const Curses = () => {
  
   
    return(
     <div className="card-columns">
            <div className="card">
                
                <div className="card-header text-center">
    <h4 className="card-title mb-0"><a href="student-take-course.html">Title here</a></h4>
                
                </div>
                <a href="student-take-course.html">
                <img src="assets/images/vuejs.png" alt="Card image cap" style={{width: "100%" }} />
                </a>
                <div className="card-body">
                    <small className="text-muted">ADVANCED</small>
                    Let’s start with a quick tour of Vue’s data binding features. If you are more interested in ...
                    <span className="badge badge-primary ">VUEJS</span>
                </div>
            </div>
        </div>
     
 )
 
  
  
}

export default Curses;