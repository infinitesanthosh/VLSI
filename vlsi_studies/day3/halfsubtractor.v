//Half subtractor
module halfsubtractor(output difference, borrow, input a,b);
        assign difference=a^b;
        assign borrow= ~a&b;
endmodule

Testbench:
`timescale 1ns/1ps
module halfsubtractortb;
        wire difference,borrow;
        reg a,b;
        halfsubtractor uut(.a(a),.b(b),.difference(difference),.borrow(borrow));
        initial begin
                $dumpfile("halfsubtractor.vcd");
                $dumpvars(0,halfsubtractortb);
                $monitor("Time=%t | A=%b, B=%b, DIFFERENCE=%b, BORROW=%b", $time,a,b,difference,borrow);
                a=0; b=0; #10;
                a=0; b=1; #10;
                a=1; b=0; #10;
                a=1; b=1; #10;
                $finish;
        end
endmodule
