pragma circom 2.0.0;

template BabyAdd(){
    signal input x1;
    signal input y1;
    signal input x2;
    signal input y2;
    signal output xout;
    signal output yout;
    
    var a = 168700;
    var d = 168696;

    xout <-- (x1 * y2 + y1 * x2) / (1+ d*(x1 * y1 * x2 * y2));

    yout <-- (- a * x1 * x2 + y1 * y2) / (1- d * (x1 * y1 * x2 * y2));
}

component main = BabyAdd();
