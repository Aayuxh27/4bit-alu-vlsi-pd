`timescale 1ns/1ps
module tb_alu;
    reg [3:0] a, b;
    reg [2:0] op;
    wire [3:0] result;
    wire carry, zero;

    alu4bit uut (.a(a), .b(b), .op(op), .result(result), .carry(carry), .zero(zero));

    initial begin
        $dumpfile("sim/alu.vcd");
        $dumpvars(0, tb_alu);

        a=4'h5; b=4'h3; op=3'b000; #10;
        $display("ADD:  %0d + %0d = %0d  carry=%b", a, b, result, carry);

        a=4'h9; b=4'h4; op=3'b001; #10;
        $display("SUB:  %0d - %0d = %0d", a, b, result);

        a=4'hF; b=4'hA; op=3'b010; #10;
        $display("AND:  %h & %h = %h", a, b, result);

        a=4'hF; b=4'h1; op=3'b000; #10;
        $display("OVERFLOW: %0d + %0d = %0d  carry=%b", a, b, result, carry);

        a=4'h5; b=4'h5; op=3'b001; #10;
        $display("ZERO: %0d - %0d = %0d  zero=%b", a, b, result, zero);

        $finish;
    end
endmodule