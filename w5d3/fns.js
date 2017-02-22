console.log("Yo!");

function madLib(vrb, adj, nn) {
  console.log(`We shall ${vrb.toUpperCase()} the ${adj.toUpperCase()} ${nn.toUpperCase()}`)
}
madLib("crash", "big", "party");

function isSubString(searchString, subString) {
  console.log(searchString.includes(subString));
}
isSubString("the big fish", "the");
isSubString("the big fish", "fishes");


function fizzBuzz(array) {
  let buzzNums = []
  for(let i = 0; i < array.length; i++) {
    if (array[i] % 3 === 0 && array[i] % 5 === 0) {
      continue;
    } else if (array[i] % 3 === 0 || array[i] % 5 === 0) {
      buzzNums.push(array[i]);
    } else {
      continue;
    }
  }
  console.log(buzzNums);
}
fizzBuzz([1, 3, 5, 7, 15, 27, 35, 50]);

function isPrime(num) {
  for(let i = 2; i < num; i++) {
    if (num % i === 0) {
      return false;
    } else {
      continue;
    }
  }
  return true;
}
console.log("Primes:")
console.log(isPrime(5));
console.log(isPrime(10));

function firstNPrimes(n) {
  let primes = [];
  let i = 2;
  while (primes.length < n) {
    if (isPrime(i)) {
      primes.push(i);
    }
    i++;
  }
  return primes;
}
console.log(firstNPrimes(4));

function sumOfNPrimes(n) {
  return firstNPrimes(n).reduce((acc, val) => acc + val );
}
console.log(sumOfNPrimes(4));
