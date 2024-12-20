module seven_segment_display (
    input [3:0] digit,       // 4-bit binary input to be displayed // Display selector (e.g., 00 for display 0, 01 for display 1, etc.)
    output reg [6:0] seg    // 7-segment output for segments (a to g)   // 7-segment display enable signals
);

    // 7-Segment Decoder Logic
    always @(*) begin
        case (digit)
            4'b0000: seg = 7'b1000000; // 0
            4'b0001: seg = 7'b1111001; // 1
            4'b0010: seg = 7'b0100100; // 2
            4'b0011: seg = 7'b0110000; // 3
            4'b0100: seg = 7'b0011001; // 4
            4'b0101: seg = 7'b0010010; // 5
            4'b0110: seg = 7'b0000010; // 6
            4'b0111: seg = 7'b1111000; // 7
            4'b1000: seg = 7'b0000000; // 8
            4'b1001: seg = 7'b0010000; // 9
            default: seg = 7'b1111111; // Blank (invalid input)
        endcase
    end


endmodule
