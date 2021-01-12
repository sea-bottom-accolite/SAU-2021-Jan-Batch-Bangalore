function toggleCase(str) {
    let ans = "";
    for (let i = 0; i < str.length; i++) {
        if (/[A-Z]/.test(str[i])) ans += str[i].toLowerCase();
        else ans += str[i].toUpperCase();
    }
    return ans;
}

console.log(toggleCase("JavaScript"));
console.log(toggleCase("Assignment"));