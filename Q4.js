function isPalindrome(num){
  var y = num.toString().split('').reverse().join('');
  if ( num == y){return true }
  else {
    return false
  }
}
console.log(isPalindrome(123))
my_pal = 0
for (i=100; i<1000;i++){
  for (j=100; j<1000; j++){
    if (isPalindrome(i*j) == true && i*j > my_pal ){
      my_pal = i*j
    }
  }
}
console.log(my_pal);
