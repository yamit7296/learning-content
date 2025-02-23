const isAnagram = (str1, str2) => {
    let strTotal = 0, strTotal2 = 0;
    for (let i = 0; i < str1.length; i++) {
        strTotal += str1.charCodeAt((i));
    }

    for (let i = 0; i < str2.length; i++) {
        strTotal2 += str2.charCodeAt((i));
    }

    return strTotal === strTotal2;
}

module.exports = {isAnagram};