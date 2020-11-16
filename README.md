# Hedgehog-Standard-Library
A library that can be imported directly at Hedgehog Lab

Each file contains a single function, which can be imported using **"*import YOUR_URL"**, for example:

```js
// qr.js at http://github.com/....../hedgehog-standard/library/qr.hs

function qr(A){
    let q=mat(); let r = mat(); class QRResult{q;r;}
    ...
    return qrResult;
}
```

You can easily import the file qr.hs and function qr(A) above in this way:
```js
*import qr
A = getMyMatrix();
print( qr(A).q );
```
