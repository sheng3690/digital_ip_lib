module sram (
    input wire       CLK; //clock domain
    input wire [3:0] ADDR;//address
    input wire [7:0] WDATA;//write data
    input wire       WREN;//write enable
    input wire [7:0] RDATA;//write 
);

  reg [7:0] memory [0:15]
  always @ ( posedge CLK )
  begin
    if (WREN == 1 )
    begin
        memory[ADDR] <= WDATA ;
    end
    else
    begin
        RDATA <= memory[ADDR]
    end
  end

    
endmodule