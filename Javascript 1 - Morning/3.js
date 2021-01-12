function allDigitsSame(num) {
    var digit = num % 10;
    while (num) {
      if (num % 10 !== digit) 
        return false;
      num = Math.floor(num / 10);
    }
    return true
  }
  
  console.log(allDigitsSame(9999));
  console.log(allDigitsSame(99919));
  console.log(allDigitsSame(123456));