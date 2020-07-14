import React, {setState} from 'react';
import {Col}from 'react-bootstrap'

const Dashboard = props => {
     
    return (
         
           <Col md={6}>
           <div className="tile">
              <h3 className="tile-title">{props.name}</h3>
           </div>
           </Col>
         
    )
 }

export default Dashboard

