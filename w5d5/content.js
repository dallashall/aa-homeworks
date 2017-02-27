function Square() {
  let canvas = document.getElementById('canvas');
  let c = canvas.getContext('2d');
  c.fillStyle = "blue";
  c.fillRect(50, 50, 30, 30);
  this.velocity = 0;
}

function move() {
  this.velocity = 5;
}


module.exports = {drawSquare: Square};
