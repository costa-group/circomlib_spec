pragma circom 2.0.0;

template A(n) {
    signal input a; //private
    signal input b;
    signal output out;



    if (a >= b){
        out <-- a - b;
    } else{
        out <-- a - b + 2**n;
    }
}

component main = A(3);
