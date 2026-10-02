pragma circom 2.0.0;

include "../../../circuits/mux3.circom";
include "../../../circuits/bitify.circom";


template Main() {
    var i;
    signal input selector;//private
    signal input in[8];
    signal output out;

    component mux = Mux3();
    component n2b = Num2Bits(3);

    selector ==> n2b.in;
    for (i=0; i<3; i++) {
        n2b.out[i] ==> mux.s[i];
    }
    for (i=0; i<8; i++) {
        in[i] ==> mux.c[i];
    }

    mux.out ==> out;
}

component main = Main();
