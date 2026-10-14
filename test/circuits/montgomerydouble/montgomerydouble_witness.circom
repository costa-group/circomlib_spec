pragma circom 2.0.0;


template MontgomeryDouble() {
    signal input in[2];
    signal output out[2];

    var a = 168700;
    var d = 168696;

    var A = (2 * (a + d)) / (a - d);
    var B = 4 / (a - d);

    signal lamda;


    lamda <-- (3*in[0] * in[0] + 2*A*in[0] + 1 ) / (2*B*in[1]);

    out[0] <-- B*lamda*lamda - A - 2*in[0];
    out[1] <-- lamda * (in[0] - out[0]) - in[1];
}

component main = MontgomeryDouble();
