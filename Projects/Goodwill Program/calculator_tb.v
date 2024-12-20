/*
	
	Author: Rohan K
	Description: Simple Calculator with memory

*/    


module calculator_tb;

    reg [2:0] a, b;
    reg addr;
    reg [1:0] op;
    reg rst;
    reg load;
    wire [6:0] sev_seg_1, sev_seg_2;

    calculator uut (
        .a(a),
        .b(b),
        .addr(addr),
        .op(op),
        .rst(rst),
        .load(load),
        .sev_seg_1(sev_seg_1),
        .sev_seg_2(sev_seg_2)
    );

    initial begin
        rst = 1; load = 0; addr = 0; a = 0; b = 0; op = 2'b00;
        #10 rst = 0;
        #10 a = 3'b101; b = 3'b011; op = 2'b00; load = 1;
        #10 load = 0;
        #10 a = 3'b110; b = 3'b010; op = 2'b01; load = 1;
        #10 load = 0;
        #10 a = 3'b011; b = 3'b010; op = 2'b10; load = 1;
        #10 load = 0;
        #10 a = 3'b100; b = 3'b001; op = 2'b11; load = 1;
        #10 load = 0;
        #10 addr = 1;
        #10 $stop;
    end
	 
	initial begin
        $monitor("Time = %0d: input_1= %b, input_2= %b, Operation=%d, Current_value = %b, Previous_value = %b", $time,uut.a, uut.b, uut.op, uut.test_ram[0], uut.test_ram[1]);
    end


endmodule
