function sumOfDigitsInString(str) {
    var ans = 0;
    for (var i = 0; i < str.length; i++)
    {
      if (/[0-9]/.test(str[i])) ans += parseInt(str[i])
    }
    return ans;

  }
  
  console.log(sumOfDigitsInString("12345678910"))
  console.log(sumOfDigitsInString("ashutosh3830258@gmail.com"))