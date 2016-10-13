for (i=0;i<1000;i++){
  for (j = i; j < 1000; j++) {
    for (k = j; k < 1000; k++){
      if (Math.pow(i,2) + Math.pow(j,2) == Math.pow(k,2) && i+j+k == 1000) {
        console.log(i*j*k)
      }
    }
  }
}
