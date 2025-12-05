//FULL SUBTRACTOR
module fullsubtractor(output difference,borrow, input a,b,c);
        assign difference=a^b^c;
        assign borrow= (b&c)|(~a&b)|(~a&c);
endmodule

//TESTBENCH
`timescale 1ns/1ps
module fullsubtractortb;
        wire difference,borrow;
        reg a,b,c;
        fullsubtractor uut(.a(a),.b(b),.c(c),.difference(difference),.borrow(borrow));
        initial begin
                $dumpfile("fullsubtractor.vcd");
                $dumpvars(0,fullsubtractortb);
                $monitor("Time=%t | A=%b, B=%b, C=%b, BORROW=%b, DIFFERENCE=%b", $time,a,b,c,borrow, difference);
                a=0; b=0; c=0; #10;
                a=0; b=1; c=1; #10;
                a=1; b=1; c=1; #10;
                a=1; b=0; c=1; #10;
                $finish;
        end
endmodule
