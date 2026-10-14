pragma circom 2.0.0;


template GreaterThan(n){
    signal input in[2];
    signal output out;

    out <-- in[0] > in[1];
}


component main = GreaterThan(32);
