pragma circom 2.0.0;


template IsEqual(){
    signal input in[2];
    signal output out;
    out <-- in[0] == in[1];
}

component main = IsEqual();
