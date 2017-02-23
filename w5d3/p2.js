function titleize(words, callback) {
  let titled = words.map(word => `My name is ${word} Jingle-Whatever-Schmidt..`);
  callback(titled);
}
titleize(["Mary", "Brian", "Leo"], (titled) => {titled.forEach(title => console.log(title))});

function Elephant(name, height, tricks = []) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
  console.log(`${this.name}, the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
}
Elephant.prototype.grow = function() {
  this.height += 12;
  console.log(this.name)
  console.log(this.height)
}
Elephant.prototype.addTrick = function(trick){
  this.tricks.push(trick);
}
Elephant.prototype.play = function() {
  console.log(this.tricks[Math.floor(Math.random() * (this.tricks.length))]);
}

let harry = new Elephant("Harry", 5);
harry.trumpet();
harry.grow();
harry.addTrick("stand still");
harry.addTrick("jump");
harry.addTrick("trample bad people");
console.log(harry.tricks);
harry.play();

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

Elephant.paradeHelper = function(elephant){
  console.log(`${elephant.name} is here.`)
}

Elephant.paradeHelper(harry);

function dinerBreakfast() {
  let order = "I'd like cheesey scrambled eggs"
  return function(food){
    order += food.length === 0 ? "" : ` and ${food}`
    console.log(`${order}, please.`)
  }
}
let bFastOrder = dinerBreakfast();
bFastOrder("biscuits");
bFastOrder("gravy");
bFastOrder("Coffee Cake");
