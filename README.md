# Hedgehog-Standard-Library
A library that can be imported directly at Hedgehog Lab

Each file contains a single function, which can be imported in this way, for example:

// http://github.com/....../hedgehog-standard/library/qr.hs

function qr(A){
    let q=mat(); let r = mat(); class QRResult{q;r;}
    ...
    return qrResult;
}


// Use in your script at Hedgehog Lab
// Hedgehog Lab will automatically search at 
// http://github.com/....../hedgehog-standard/library/
// and check if qr.hs exists, and import the qr.hs automatically 
// if it exists at this repo.
// You can still *import the long URL if you like
*import qr
let A = getMyMatrix();
print( qr(A).q );