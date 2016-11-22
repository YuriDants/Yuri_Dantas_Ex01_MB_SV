// contador tipo 1  0, 1, 2,..., 13, 14, 15, 14, 13,..., 1, 0, 1, 2...
module Cont1_ex1(input logic clock, reset, output logic[3:0] sa);
	logic dir;
	
always @(posedge clock or posedge reset)
	if(reset) 
		begin
			sa = 4'd0;
			dir = 1'b0;
		end
			else
			
				begin
					if(dir)
						sa = sa - 4'd1;
						
							else
								sa= sa - 4'd1;
							
					if(sa==4'd15 || sa==4'd0)
						dir = ~ dir;
				end
endmodule
				