const getLargestElement = (nestedArr) => {
    return Math.max(...nestedArr.join().split(','))
}

console.log(getLargestElement([1,9,3,[7,3,11], 0, [[122]]]));