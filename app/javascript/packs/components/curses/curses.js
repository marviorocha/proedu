import React, { useState, useEffect } from 'react';
import MyCurse from './index.js'


function Curses() {

const curseData = JSON.parse(document.getElementById("curse_data").dataset.curse)
const [curse, setCurse ] = useState(curseData)
const [load, setLoad] = useState(true)

useEffect(() => { setInterval(() => { setLoad(false) }, 1000) }, [curse])

const spinnel = <i className="fa fa-spinner fa-pulse fa-3x fa-fw"></i>


    return (
    <div className="card-columns">
        { load ? spinnel : curse.map(item => { return <MyCurse key={item.id} curses={item} /> }) }
    </div>
        )

};

export default Curses;