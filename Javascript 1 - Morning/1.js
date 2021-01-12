function primeFactors(num) {
    const ans = [];
    while(num != 1)
    {
        let factor = 2;
        while(num%factor != 0)
            factor++;
  
        if(num % factor == 0)
        {
            ans.push(factor);
            num /= factor;
        }    
    }
    return ans;
}
console.log(primeFactors(51));
console.log(primeFactors(52));
console.log(primeFactors(53));
console.log(primeFactors(54));
console.log(primeFactors(55));
