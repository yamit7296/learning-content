function fibonacciSequence(n) {
    let a = 0, b = 1, sequence = [];
    
    for (let i = 0; i < n; i++) {
        sequence.push(a);
        let temp = a;
        a = b;
        b = temp + b;
    }
    
    return sequence;
}

// Example: Print first 15 Fibonacci numbers
console.log(fibonacciSequence(4));
