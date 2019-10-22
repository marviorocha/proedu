console.log('Hello World from Webpacker')

require("trix")
require("@rails/actiontext")
require("flatpickr/dist/flatpickr.css")
require("plyr/dist/plyr.css")
import clipboard from 'clipboard'
import flatpickr from 'flatpickr'
import animatedmodal from 'animatedmodal'
import Plyr from 'plyr';
const player = new Plyr('#player');

const clipboard = new ClipboardJS('.btn');


$("#licaoclick").click(function(){
    player.pause();
});

 
