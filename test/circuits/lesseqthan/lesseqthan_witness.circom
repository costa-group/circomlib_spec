pragma circom 2.0.0;


template LessEqThan(n){
    signal input in[2];
    signal output out;

    out <-- in[0] <= in[1];
}


component main = LessEqThan(32);
