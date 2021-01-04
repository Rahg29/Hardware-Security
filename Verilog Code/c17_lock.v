

module c17_lock (N1,N2,N3,N6,N7,K1,K2,K3,N22,N23);

input N1,N2,N3,N6,N7,K1,K2,K3;

output N22,N23;

wire N10,N11,N16,N19;

nand NAND2_1 (N10, N1, N3);
xor x_1 (N28,N10,K1);
nand NAND2_2 (N11, N3, N6);
xor x_2 (N29,N11,K2);
nand NAND2_4 (N16, N2, N29);
xor x_3 (N30,N16,K3);
nand NAND2_3 (N19, N7, N29);
not n (N31,N28);
nand NAND2_6 (N22, N31, N30);
nand NAND2_7 (N23, N30, N19);

endmodule
