`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2018 02:21:06 PM
// Design Name: 
// Module Name: c17_antisat
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////




module c17_antisat_so (N1,N2,N3,N6,N7,K1,K2,K3,K4,K5,K6,K7,K8,K9,K10,K11,N22,N23);

input N1,N2,N3,N6,N7,K1,K2,K3,K4,K5,K6,K7,K8,K9,K10,K11;

output N22,N23;

wire N10,N11,N16,N19;

nand NAND2_1 (N10, N1, N3);
xor x_1 (N28,N10,K1);
nand NAND2_2 (N11, N3, N6);
xor x_2 (N29,N11,K2);
nand NAND2_4 (N16, N2, N29);
xor x_3 (N30,N16,K3);
nand NAND2_3 (N19, N7, N29);
not n_1 (N31,N28);
nand NAND2_6 (N41, N31, N30);
nand NAND2_7 (N42, N30, N19);

xor x_4 (N32,N1,K4);
xnor x_5 (N33,N6,K5);
xnor x_6 (N34,N2,K6);
xor x_7 (N35,N1,K7);
xnor x_8 (N36,N6,K8);
xnor x_9 (N37,N2,K9);

and AND2_2 (N43, N32, K10);
not n_2 (N45, K10);
and AND2_3 (N44, N45, N29);
or OR2_1 (N46, N43, N44);
and AND3_1 (N38, N46, N33, N34);
and AND2_4 (N47, N36, K11);
and AND2_5 (N49, N48, N16);
not n_3 (N48, K11);
or OR2_2 (N50, N47, N49);
nand NAND3_1 (N39, N35, N50, N37);
or OR2_3 (N40, N38, N39);

xor x_10 (N22,N40,N41);
xor x_11 (N23,N40,N42);

endmodule
