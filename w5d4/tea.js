const readline = require('readline');
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});



let cb = answer => {
    console.log(`I see that you ${answer} like tea... Not that it really matters.`);
    rl.question("Well, do you like biscuits?", otherAnswer => {
    console.log(`I see that you ${otherAnswer} like biscuits and ${answer} like tea... Not that it really matters.`);
    rl.close();
  })
};

let promptUser = () => {
  rl.question("What up? You like tea?", cb);
};

promptUser();
