/*
	
	Author: Rohan K
	Description: Simple Calculator with memory

*/




module calculator(
input [2:0] a,b,
input addr,
input [1:0] op,
input rst,
input load,
output [6:0] sev_seg_1,sev_seg_2);

reg [7:0] test_ram [1:0];
reg [7:0] out;
reg [3:0] digit_0, digit_1;

always @(posedge load or posedge rst)
	begin
		if (rst)
		begin
			test_ram[0]<= 8'b00000000;
			test_ram[1]<= 8'b00000000;
			out <=8'b00000000;
		end
		
		else if(load)
			begin
			test_ram[1]<=test_ram[0];
				case(op)
				2'b00: out <=a+b;
				2'b01: out <=a-b;
				2'b10: out <=a*b;
				2'b11: out <=a/b;
				endcase
			end
		test_ram[0]<=out;
		digit_0<= test_ram[addr]%10;
		digit_1<= test_ram[addr]/10;
		end
	 
	
seven_segment_display s1(digit_0, sev_seg_1);
seven_segment_display s2(digit_1, sev_seg_2);

endmodule
