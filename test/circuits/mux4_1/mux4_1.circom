pragma circom 2.0.0;

include "../../../circuits/mux4.circom";
include "../../../circuits/bitify.circom";



template Main() {
    var i;
    signal input selector;//private
    signal input in[16];
    signal output out;

    component mux = Mux4();
    component n2b = Num2Bits(4);

    selector ==> n2b.in;
    for (i=0; i<4; i++) {
        n2b.out[i] ==> mux.s[i];
    }
    for (i=0; i<16; i++) {
        in[i] ==> mux.c[i];
    }

    mux.out ==> out;
}

component main = Main();
