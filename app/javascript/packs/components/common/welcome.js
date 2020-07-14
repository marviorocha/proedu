import React, {useState, useEffect} from "react"

    const Welcome = (props) => { 

    
    const[count, setCount] = useState(0);
    useEffect(() => {
        document.title = `You are clicked ${count} times`;
    });
 
        
        
   return (<div>
          <h1><i className="fa fa-dashboard"></i>{props.name}</h1>
          <p>A free and open source Bootstrap 4 admin template</p>
          <button onClick={()=> setCount(count + 1)} className="btn btn-primary">Update</button>
         </div>
    )
 
   }

export default Welcome;    