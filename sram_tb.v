module sram_tb();

reg CLK;
reg [3:0] ADDR;
reg [7:0] WDATA;
reg WREN;
wire [7:0] RDATA;

initial begin
    $dumpfile("sram.vcd");
    $dumpvars;
    CLK = 0;
    WREN = 0 ; ADDR = 4'b 0000 ; WDATA = 8'b 0000_1111 ; #10;
    WREN = 1 ; ADDR = 4'b 0001 ; WDATA = 8'b 1010_1010 ; #10;
    WREN = 0 ; ADDR = 4'b 0001 ; WDATA = 8'b 0000_0000 ; #10; $finish;
end

always    #5       CLK = ~ CLK  ;

sram DUT (    CLK  ,    ADDR  ,    WDATA  ,    WREN  ,    RDATA ) ;

endmodule