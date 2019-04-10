`timescale 1ns/1ns
module source(y,n,s,a,rst,clk);

output reg [2:0] y;
output reg [3:0] n;
output reg [3:0] s;

input wire [0:0] a;
input wire rst;
input wire clk;

 always @(s,a,rst) begin

  case (s)

   4'b0000:
   begin
	if (a == 1'b0) begin
	 n <= 4'b0000;
	 y <= 3'b000;
	end
	else if (a == 1'b1) begin
	 n <= 4'b0001;
	 y <= 3'b000;
	end
   end
   4'b0001:
   begin
	if (a == 1'b0) begin
	 n <= 4'b0010;
	 y <= 3'b000;
	end
	else if (a == 1'b1) begin
	 n <= 4'b0001;
	 y <= 3'b000;
	end
   end
   4'b0010:
   begin
	if (a == 1'b0) begin
	 n <= 4'b0011;
	 y <= 3'b000;
	end 
	else if (a == 1'b1) begin
	 n <= 4'b0110;
	 y <= 3'b000;
	end
   end
   4'b0011:
   begin
	if (a == 1'b0) begin
	 n <= 4'b0100;
	 y <= 3'b000;
	end
	else if (a == 1'b1) begin
	 n <= 4'b0111;
	 y <= 3'b000;
	end
   end
   4'b0100:
   begin
	if (a == 1'b0) begin
	 n <= 4'b0101;
	 y <= 3'b000;
	 end
	else if (a == 1'b1) begin
	 n <= 4'b1000;
	 y <= 3'b000;
	 end
   end
4'b0101:
begin
if (a == 1'b0) begin
n <= 4'b0101;
y <= 3'b000;
end
else if (a == 1'b1) begin
n <= 4'b1001;
y <= 3'b000;
end
end
4'b0110:
begin
if (a == 1'b0) begin
n <= 4'b0000;
y <= 3'b001;
end
else if (a == 1'b1) begin
n <= 4'b0001;
y <= 3'b001;
end
end
4'b0111:
begin
if (a == 1'b0) begin
n <= 4'b0000;
y <= 3'b010;
end
else if (a == 1'b1) begin
n <= 4'b0001;
y <= 3'b010;
end
end
4'b1000:
begin
if (a == 1'b0) begin
n <= 4'b0000;
y <= 3'b011;
end
else if (a == 1'b1) begin
n <= 4'b0001;
y <= 3'b011;
end
end
4'b1001:
begin
if (a == 1'b0) begin
n <= 4'b0000;
y <= 3'b111;
end
else if (a == 1'b1) begin
n <= 4'b0001;
y <= 3'b111;
end
end
4'b1010:
begin
if (a == 1'b0) begin
n <= 4'b0000;
y <= 3'b000;
end
else if (a == 1'b1) begin
n <= 4'b0000;
y <= 3'b000;
end
end
4'b1011:
begin
if (a == 1'b0) begin
n <= 4'b0000;
y <= 3'b000;
end
else if (a == 1'b1) begin
n <= 4'b0000;
y <= 3'b000;
end
end
4'b1100:
begin
if (a == 1'b0) begin
n <= 4'b0000;
y <= 3'b000;
end
else if (a == 1'b1) begin
n <= 4'b0000;
y <= 3'b000;
end
end
4'b1101:
begin
if (a == 1'b0) begin
n <= 4'b0000;
y <= 3'b000;
end
else if (a == 1'b1) begin
n <= 4'b0000;
y <= 3'b000;
end
end
4'b1110:
begin
if (a == 1'b0) begin
n <= 4'b0000;
y <= 3'b000;
end
else if (a == 1'b1) begin
n <= 4'b0000;
y <= 3'b000;
end
end
4'b1111:
begin
if (a == 1'b0) begin
n <= 4'b0000;
y <= 3'b000;
end
else if (a == 1'b1) begin
n <= 4'b0000;
y <= 3'b000;
end
end

endcase
end
// Sync reset
always @(rst, posedge clk) begin
if (rst)
s <= 4'b0000;
else
s <= n;
end
endmodule