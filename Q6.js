var sumofsquare = 0
var sum = 0
for (i=1;i<=100; i++){
  sumofsquare += Math.pow(i,2)
  sum += i
}

console.log(sumofsquare-Math.pow(sum,2));
