import React, { Component } from 'react';
import MyCurse from './index.js'


class Curses extends Component {
    
    
    constructor(){
        
        super()
        this.state = {
            curses: JSON.parse(document.getElementById("curse_data").dataset.curse),
            loading: true,
            title: 1
        }        
        
    }
    
    componentDidMount(){
        
        const CurseData = JSON.parse(document.getElementById("curse_data").dataset.curse)
         setInterval(() =>{

               this.setState({ 
                 loading: false,
                 curses: CurseData
                })

             
            }, 1000 )
             
         

     
  

   }
    
    render(){
        
        
        
         
             return(
            <div className="card-columns">
                {this.state.loading ? "Loading..." : this.state.curses.map(item => {
                return <MyCurse key={item.id} curses={item} />
            })} </div>
            
           
        )

    }


}

export default Curses;