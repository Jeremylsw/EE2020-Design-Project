`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2017 01:49:14
// Design Name: 
// Module Name: averageavg2b
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


module averageavg2b(
    input CLK,
    input [11:0]MIC_in,
    output reg [15:0]led_display_l,
    output reg [3:0] antwobout_l,
    output reg [6:0] segtwobout_l
    );
    reg [11:0] FINAL_MIC_l;
    reg [13:0] sevensegment2b_l;
    integer count_l;
    
    wire clk_3002bl;
    wire clk_20k2bl;
    FlexiClock cc2b100l(300,CLK,clk_3002bl);
    FlexiClock cc2b20kl(20000,CLK,clk_20k2bl);
    
   always @(posedge clk_20k2bl) begin
         if (count_l >= 200) begin
             if (FINAL_MIC_l <= 2048) begin
                 led_display_l <= 16'b0;
                 //Display 00
                 sevensegment2b_l[13:7] = 7'b1000000;
                 sevensegment2b_l[6:0] = 7'b1000000;
             end
             else if (FINAL_MIC_l > 2048 && FINAL_MIC_l <= 2176) begin
                 led_display_l <= 16'b1;
                 //Display 01
                 sevensegment2b_l[13:7] = 7'b1000000;
                 sevensegment2b_l[6:0] = 7'b1111001;
             end
             else if (FINAL_MIC_l > 2176 && FINAL_MIC_l <= 2304) begin
                 led_display_l <= 16'b11;
                 //Display 02
                 sevensegment2b_l[13:7] = 7'b1000000;
                 sevensegment2b_l[6:0] = 7'b0100100;
             end
             else if (FINAL_MIC_l > 2304 && FINAL_MIC_l <= 2432) begin
                 led_display_l <= 16'b111;
                 //Display 03
                 sevensegment2b_l[13:7] = 7'b1000000;
                 sevensegment2b_l[6:0] = 7'b0110000;
             end
             else if (FINAL_MIC_l > 2432 && FINAL_MIC_l <= 2560) begin
                 led_display_l <= 16'b1111;
                 //Display 04
                 sevensegment2b_l[13:7] = 7'b1000000;
                 sevensegment2b_l[6:0] = 7'b0011001;
             end
             else if (FINAL_MIC_l > 2560 && FINAL_MIC_l <= 2688) begin
                 led_display_l <= 16'b11111;
                 //Display 05
                 sevensegment2b_l[13:7] = 7'b1000000;
                 sevensegment2b_l[6:0] = 7'b0010010;
             end
             else if (FINAL_MIC_l > 2688 && FINAL_MIC_l <= 2816) begin
                 led_display_l <= 16'b111111;
                 //Display 06
                 sevensegment2b_l[13:7] = 7'b1000000;
                 sevensegment2b_l[6:0] = 7'b0000010;
             end
             else if (FINAL_MIC_l > 2816 && FINAL_MIC_l <= 2944) begin
                 led_display_l <= 16'b1111111;
                 //Display 07
                 sevensegment2b_l[13:7] = 7'b1000000;
                 sevensegment2b_l[6:0] = 7'b1111000;
             end
             else if (FINAL_MIC_l > 2944 && FINAL_MIC_l <= 3072) begin
                 led_display_l <= 16'b11111111;
                 //Display 08 
                 sevensegment2b_l[13:7] = 7'b1000000;
                 sevensegment2b_l[6:0] = 7'b0000000;
             end
             else if (FINAL_MIC_l > 3072 && FINAL_MIC_l <= 3200) begin
                 led_display_l <= 16'b111111111;
                 //Display 09
                 sevensegment2b_l[13:7] = 7'b1000000;
                 sevensegment2b_l[6:0] = 7'b0010000;
             end
             else if (FINAL_MIC_l > 3200 && FINAL_MIC_l <= 3328) begin
                 led_display_l <= 16'b1111111111;
                 //Display 10
                 sevensegment2b_l[13:7] = 7'b1111001;
                 sevensegment2b_l[6:0] = 7'b1000000;
             end
             else if (FINAL_MIC_l > 3328 && FINAL_MIC_l <= 3456) begin
                 led_display_l <= 16'b11111111111;
                 //Display 11
                 sevensegment2b_l[13:7] = 7'b1111001;
                 sevensegment2b_l[6:0] = 7'b1111001;
             end
             else if (FINAL_MIC_l > 3456 && FINAL_MIC_l <= 3584) begin
                 led_display_l <= 16'b111111111111;
                 //Display 12
                 sevensegment2b_l[13:7] = 7'b1111001;
                 sevensegment2b_l[6:0] = 7'b0100100;
             end    
             else if (FINAL_MIC_l > 3584 && FINAL_MIC_l <= 3712) begin
                 led_display_l <= 16'b1111111111111;
                 //Display 13
                 sevensegment2b_l[13:7] = 7'b1111001;
                 sevensegment2b_l[6:0] = 7'b0110000;
             end  
             else if (FINAL_MIC_l > 3712 && FINAL_MIC_l <= 3840) begin
                 led_display_l <= 16'b11111111111111;
                 //Display 14
                 sevensegment2b_l[13:7] = 7'b1111001;
                 sevensegment2b_l[6:0] = 7'b0011001;
             end  
             else if (FINAL_MIC_l > 3840 && FINAL_MIC_l <= 3956) begin
                 led_display_l <= 16'b111111111111111;
                 //Display 15
                 sevensegment2b_l[13:7] = 7'b1111001;
                 sevensegment2b_l[6:0] = 7'b0010010;
             end  
             else begin
                 led_display_l <= 16'b1111111111111111;
                 //Display 16
                 sevensegment2b_l[13:7] = 7'b1111001;
                 sevensegment2b_l[6:0] = 7'b0000010;
             end  
             FINAL_MIC_l <= 0;
             count_l <= 0;
         end
         else begin
             FINAL_MIC_l <= (MIC_in/100)*30 + (FINAL_MIC_l/100)*70;
             count_l <= count_l + 1;
         end
    end
    
    //LED displayer
    integer countlabtwo_l = 0;
    always@ (posedge clk_3002bl) begin
        if (countlabtwo_l == 0) begin
             //Prints seven segment zero
             antwobout_l[0] <= 1'b0;
             antwobout_l[3:1] <= 3'b111;
             segtwobout_l <= sevensegment2b_l[6:0];
             countlabtwo_l <= 1;
         end
         //Turn on seven-seg[1]
         else if (countlabtwo_l == 1) begin
             //Prints seven segment one if seg != 0 
             antwobout_l[3:2] <= 2'b11;
             antwobout_l[0] <= 1'b1;
             antwobout_l[1] <= (sevensegment2b_l[13:7] == 7'b1000000) ? 1'b1 : 1'b0;
             segtwobout_l <= sevensegment2b_l[13:7];
             countlabtwo_l <= 2;
         end
         else if (countlabtwo_l == 2) begin
             antwobout_l[3] <= 1'b0;
             antwobout_l[2:0] <= 3'b111;
             segtwobout_l <= 7'b1000111;
             countlabtwo_l <= 0;
         end
    end
endmodule
