/*
Function magic
Author: lidangzzz
Input: x: size of magic matrix
Output: a magic matrix
Reference: https://www.geeksforgeeks.org/magic-square/
*/

function magic(n){

    if (n%2===0) throw "The input n must be odd for magic function.";
    
    let returnMat = mat().zeros(n);

    // Initialize position for 1
    let i = Math.floor(n / 2);
    let j = n - 1;
 
    // One by one put all values in magic square
    for (let num = 1; num <= n * n;) {
        if (i === -1 && j === n) // 3rd condition
        {
            j = n - 2;
            i = 0;
        }
        else {
            // 1st condition helper if next number
            // goes to out of square's right side
            if (j === n)
                j = 0;
 
            // 1st condition helper if next number
            // is goes to out of square's upper side
            if (i < 0)
                i = n - 1;
        }
        console.log("ij: " + i + ' ' + j)
        if (returnMat.val[i][j] !== 0) // 2nd condition
        {
            j -= 2;
            i += 1;
            continue;
        }
        else{

            returnMat.val[i][j] = num; // set number
            num+=1;
        }
 
        j+=1;
        i-=1; // 1st condition
    }

    return returnMat;
}
