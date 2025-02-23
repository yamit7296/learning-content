let a = 10;

if(true) {
    var a = 20;
    console.log(a)
}


console.log(a)



// Promise.resolve().then(() => {
//     console.log(1);
// });

// console.log(3)

// const { spawn } = require('child_process');

// const ls = spawn('ls', ['-la', './']);

// ls.stdout.on('data', (data) => {
//   console.log(`Output: ${data}`);
// });

// ls.stderr.on('data', (data) => {
//   console.error(`Error: ${data}`);
// });

// ls.on('close', (code) => {
//   console.log(`Process exited with code: ${code}`);
// });






// const { Readable } = require('stream');

// const readable = new Readable({
//   read(size) {
//     this.push('Data chunk');
//     this.push(null); // Signal the end of the stream
//   }
// });

// readable.on('data', (chunk) => {
//   console.log(`Received: ${chunk}`);
// });

// readable.on('end', () => {
//   console.log('Stream ended');
// });


  

  
  
  
  

/*
1. test
2. end
3. promise
4. timeout 
5. process.nextTick
6. setImmediate
*/


























// var flat = function (arr, n) {
//     const result = [];
//     arr.forEach((value) => {
//         if(Array.isArray(value) && n > 0) {
//             simpleArray(result, value, n, 0);
//         }
//         else {
//             result.push(value);
//         }
//     });
//     return result;
// };

// const simpleArray = (result, current, depth, currentDepth) => {
//     if(depth === currentDepth) {
//         result.push(current);
//         return;
//     }
//     current.forEach((value) => {
//         if(!Array.isArray(value)) {
//             result.push(value);
//             return;
//         }
//         simpleArray(result, value, depth, currentDepth + 1)
//     });
// }

// const result = flat([1, 2, 3, [4, 5, 6], [7, 8, [9, 10, 11], 12], [13, 14, 15]], 1);
// console.log(result);