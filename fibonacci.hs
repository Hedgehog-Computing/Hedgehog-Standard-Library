/*
Function fibonacci
Author: lidangzzz
Input: x: number
Output: fibonacci of x
*/


function fibonacci(x){
    if (x<0) return 0;
    if (x==1 || x==0) return 1;

    //elst x>=2
    let dp = [1,1]
    for (let i=2;i<=x;i++){ let val = dp[dp.length-1] + dp[dp.length-2]; dp.push(val)}
    return dp[x];
}