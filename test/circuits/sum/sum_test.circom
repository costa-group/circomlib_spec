pragma circom 2.0.0;

include "../../../circuits/bitify.circom";
include "../../../circuits/binsum.circom";

template A(n) {
    signal input a; //private
    signal input b;
    signal output out;

    var i;

    component n2ba = Num2Bits(n);
    component n2bb = Num2Bits(n);
    component sum = BinSum(n,2);
    component b2n = Bits2Num(n+1);

    n2ba.in <== a;
    n2bb.in <== b;

    for (i=0; i<n; i++) {
        sum.in[0][i] <== n2ba.out[i];
        sum.in[1][i] <== n2bb.out[i];
    }

    for (i=0; i<n+1; i++) {
        b2n.in[i] <== sum.out[i];
    }

    out <== b2n.out;
}

component main = A(3);
