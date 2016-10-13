function evenlydiv(x) {
  if (x%20==0 && x%19==0 && x%18==0 && x%17==0 && x%16==0 && x%15==0 && x%14==0 && x%13==0 && x%12==0 && x%11==0)
  {
    return true
  }
  else {return false }
}

x = 20

 do {x+=20} while (evenlydiv(x) == false)
console.log(x);
