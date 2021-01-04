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




module c17_antisat (N1,N2,N3,N6,N7,K1,K2,K3,K4,K5,K6,K7,K8,K9,N22,N23);

input N1,N2,N3,N6,N7,K1,K2,K3,K4,K5,K6,K7,K8,K9;

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
nand NAND2_6 (N41, N31, N30);
nand NAND2_7 (N42, N30, N19);

xor x_4 (N32,N1,K4);
xnor x_5 (N33,N6,K5);
xnor x_6 (N34,N2,K6);
xor x_7 (N35,N1,K7);
xnor x_8 (N36,N6,K8);
xnor x_9 (N37,N2,K9);

and AND3_1 (N38, N32, N33, N34);
nand NAND3_1 (N39, N35, N36, N37);
and AND2_1 (N40, N38, N39);

xor x_10 (N22,N40,N41);
xor x_11 (N23,N40,N42);

endmodule
