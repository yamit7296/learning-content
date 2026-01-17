const arr1 = [9,10, 11];
const arr2 = [1, 9, 10];
const result = [];

let i = 0, j = 0;

while(i < arr1.length && j < arr2.length) {
    if(arr1[i] <= arr2[j]) {
        result.push(arr1[i]);
        i++;
    }
    else {
        result.push(arr2[j]);
        j++;
    }
}

if(i < result.length) {
    result.push(...arr1.slice(i));
}


if(j < result.length) {
    result.push(...arr2.slice(j));
}
    
console.log(result)