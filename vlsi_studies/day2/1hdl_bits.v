//Vectors are used to group related signals using one name to make it more convenient to manipulate. 
//For example, wire [7:0] w; declares an 8-bit vector named w that is equivalent to having 8 separate wires.

//Declaring vectors:
wire [7:0] w;         // 8-bit wire
reg  [4:1] x;         // 4-bit reg
output reg [0:0] y;   // 1-bit reg that is also an output port (this is still a vector)
input wire [3:-2] z;  // 6-bit wire input (negative ranges are allowed)
output [3:0] a;       // 4-bit output wire. Type is 'wire' unless specified otherwise.
wire [0:7] b;         // 8-bit wire where b[0] is the most-significant bit.

//Example:
`default_nettype none     // Disable implicit nets. Reduces some types of bugs.
module top_module( 
    input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo );
    assign out_hi=in[15:8];
    assign out_lo=in[7:0];
endmodule

A 32-bit vector can be viewed as containing 4 bytes (bits [31:24], [23:16], etc.).
Build a circuit that will reverse the byte ordering of the 4-byte word.
AaaaaaaaBbbbbbbbCcccccccDddddddd => DdddddddCcccccccBbbbbbbbAaaaaaaa

module top_module( 
    input [31:0] in,
    output [31:0] out );//

    assign out[31:24] = in[7:0];
    assign out[23:16]= in[15:8];
    assign out[15:8]= in[23:16];
    assign out[7:0]= in[31:24];


endmodule
