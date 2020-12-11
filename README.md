# Hedgehog-Standard-Library
A library that can be imported directly at Hedgehog Lab

Each file contains a single function, which can be imported using ```"*import std: LIB_NAME"``` or ```*import Hedgehog-Standard-Library: LIB_NAME```, for example:

```js
// qr.hhs at http://github.com/....../hedgehog-standard/library/qr.hhs

function qr(A){
    let q=mat(); let r = mat(); class QRResult{q;r;}
    ...
    return qrResult;
}
```

You can easily import the file qr.hhs and function qr(A) above in this way:
```js
*import std:qr, svd, fibonacci, magic
A = getMyMatrix();
print( qr(A).q );
print( svd(A).U );
print( magic(15) );
```

Notice: Each function library must be registered at the list of ```includes``` at the ```hedgehog-package.json``` file. It includes a json file like:
```js
{
    "name": "https://raw.githubusercontent.com/Hedgehog-Computing/Hedgehog-Standard-Library/main/",
    "includes" : ["magic", "qr", "fibonacci"]
}
```
in which user can import any valid libraries LIB_NAME from the list of "libs", and Hedgehog Lab will automatically include the corresponding "hhs" file by concatenating string ```"root" + LIB_NAME + ".hhs"```, for example:
```js
myQR = *import std:qr
```
is the same as 
```js
myQR = *import Hedgehog-Standard-Library:qr
```
and also is the same as
```js
myQR = *import  https://raw.githubusercontent.com/Hedgehog-Computing/Hedgehog-Standard-Library/main/qr.hhs
```

or 

```js
*import std:qr
```
is also the same as 
```js
*import  https://raw.githubusercontent.com/Hedgehog-Computing/Hedgehog-Standard-Library/main/qr.hhs
```
