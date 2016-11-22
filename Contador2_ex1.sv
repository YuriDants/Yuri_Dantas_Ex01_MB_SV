//contador tipo 2  0, 1, 2,..., 13, 14, 15, 15, 14, 13,..., 1, 0, 0, 1, 2...
module Cont2_ex1(input logic clock, reset, output logic[3:0] sa);
    logic dir, go1, go2;

    always @(posedge clock or posedge reset)
        if(reset) begin
            sa = 4'd0;
            dir = 1'b0;
            go1 = 1'b1;
            go2 = 1'b0;
        end
        else begin
            if(go1) begin
                if(dir)
                    sa = sa - 4'd1;
                else
                    sa = sa + 4'd1;

                go2 = 1'b1;
            end
            else
                go1 = 1'b1;

            if((sa==4'd15 || sa==4'd0) && go2) begin
                dir = ~dir;
                go1 = 1'b0;
                go2 = 1'b0;
            end
        end
endmodule
