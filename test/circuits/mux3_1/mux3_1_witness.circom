pragma circom 2.0.0;



template Main() {
    var i;
    signal input selector;//private
    signal input in[8];
    signal output out;

    out <-- in[selector];
}

component main = Main();
