pragma circom 2.0.0;

include "../../../circuits/bitify.circom";
include "../../../circuits/binsub.circom";

template A(n) {
    signal input a; //private
    signal input b;
    signal output out;

    var i;

    component n2ba = Num2Bits(n);
    component n2bb = Num2Bits(n);
    component sub = BinSub(n);
    component b2n = Bits2Num(n);

    n2ba.in <== a;
    n2bb.in <== b;

    for (i=0; i<n; i++) {
        sub.in[0][i] <== n2ba.out[i];
        sub.in[1][i] <== n2bb.out[i];
    }

    for (i=0; i<n; i++) {
        b2n.in[i] <== sub.out[i];
    }

    out <== b2n.out;
}

component main = A(3);
