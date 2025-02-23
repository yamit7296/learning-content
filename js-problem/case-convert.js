const {isAnagram} = require('./anagram.js');

function toTitleCase(str) { 

    return str.replace(/\b\w/g, l => l.toUpperCase()); 
  
  } 

console.log(toTitleCase('sdk ksdmfl kmldsfm'));

console.log(isAnagram('abc', 'acb'));