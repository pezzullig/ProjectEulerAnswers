600851475143

function isPrime(z){
  var p = Math.pow(z,0.5)
  var count = 0
  for (i = 2; i <= Math.ceil(p); i++){
    if (z%i==0) {
      return false
      break;}
    else {count++;}
  }
  if (count === Math.ceil(p)-1) {return true}
}

console.log(isPrime(37));

// function primefactors(x) {
//   var done = 0
//   var y = Math.floor(x/2)
//   while (done != 1){
//     if (x % y == 0 && y%2!=0 && isPrime(y) == true) {console.log(y); done++}
//     else { y-=1; }
//   }
// }


function primeFactorization(num){
  var root = Math.sqrt(num),
  result = arguments[1] || [],  //get unnamed paremeter from recursive calls
  x = 2;

  if(num % x){//if not divisible by 2
   x = 3;//assign first odd
   while((num % x) && ((x = x + 2) < root)){}//iterate odds
  }
  //if no factor found then num is prime
  x = (x <= root) ? x : num;
  result.push(x);//push latest prime factor

  //if num isn't prime factor make recursive call
  return (x === num) ? result : primeFactorization(num/x, result) ;
}

// primeFactorization(600851475143)


function largestPrimeFactor(number) {
var i = 2;
while (i <= number) {
    if (number % i == 0) {
        number /= i;
    } else {
        i++;
    }
}
console.log(i);
}
var a = 600851475143 ;
largestPrimeFactor(a)
