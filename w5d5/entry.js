ds = require('./content.js');
let square = new ds.drawSquare;

let btn = document.getElementById('move');
btn.addEventListener("click", ds.move.call(square), false);
