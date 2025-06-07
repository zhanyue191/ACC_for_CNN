`timescale 1ns/1ps
module acc_tb();

 reg clk;
 reg rstn;
 reg AccValid_i;
// reg [23:0]  DataRamData_i;

wire           AccReady_o;
//wire   [5:0]   DataRamAddr_o;
wire   [7:0]   Num0_o;
wire   [7:0]   Num1_o;
wire   [7:0]   Num2_o;
wire   [7:0]   Num3_o;
wire   [7:0]   Num4_o;
wire   [7:0]   Num5_o;
wire   [7:0]   Num6_o;
wire   [7:0]   Num7_o;
wire   [7:0]   Num8_o;
wire   [7:0]   Num9_o;

initial begin
        clk = 0;
        forever      #5 clk = ~clk;
end


 

initial begin
          rstn = 0;
      #20 rstn = 1;
end

initial begin
       AccValid_i = 0;       
       #200 AccValid_i = 1;
       #10 AccValid_i = 0;
       
      // #20 AccValid_i = 1;
      // #20 DataRamData_i = 2;
       //AccValid_i = 0;
       //#20 AccValid_i = 1;
      // #20 DataRamData_i = 3;
      // AccValid_i = 0;
end

ACC     ACC(
        .clk                            (clk),
        .rstn                           (rstn),
        .AccValid_i                     (AccValid_i),
        .AccReady_o                     (AccReady_o),
 //       .DataRamAddr_o                  (DataRamAddr_o),
 //       .DataRamData_i                  (DataRamData_i),
        .Num0_o                         (Num0_o),
        .Num1_o                         (Num1_o),
        .Num2_o                         (Num2_o),
        .Num3_o                         (Num3_o),
        .Num4_o                         (Num4_o),
        .Num5_o                         (Num5_o),
        .Num6_o                         (Num6_o),
        .Num7_o                         (Num7_o),
        .Num8_o                         (Num8_o),
        .Num9_o                         (Num9_o)
);

endmodule