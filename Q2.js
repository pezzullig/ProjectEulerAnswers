
fib = [1,2]
sum = 0
console.log(fib[fib.length - 1])
while (fib[fib.length-1]<4000000){
  if (fib[fib.length - 1]%2==0) {
    sum += fib[fib.length -1]
  }
  var newFib = fib[fib.length-1] + fib[fib.length-2]
  fib[fib.length] = newFib
}

console.log(sum)
