pragma circom 2.0.0;

template A(n) {
    signal input a; //private
    signal input b;
    signal output out;

    out <-- a + b;

   
}

component main = A(3);
