// Traffic Light Controller
// Verilog HDL

module traffic_light_controller (
    input  wire clk,
    input  wire reset,
    output reg red,
    output reg yellow,
    output reg green
);

    // State definitions
    parameter RED_STATE    = 2'b00;
    parameter GREEN_STATE  = 2'b01;
    parameter YELLOW_STATE = 2'b10;

    reg [1:0] state;

    // State transition
    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= RED_STATE;
        else begin
            case (state)
                RED_STATE:
                    state <= GREEN_STATE;

                GREEN_STATE:
                    state <= YELLOW_STATE;

                YELLOW_STATE:
                    state <= RED_STATE;

                default:
                    state <= RED_STATE;
            endcase
        end
    end

    // Output logic
    always @(*) begin
        red    = 1'b0;
        yellow = 1'b0;
        green  = 1'b0;

        case (state)
            RED_STATE:
                red = 1'b1;

            GREEN_STATE:
                green = 1'b1;

            YELLOW_STATE:
                yellow = 1'b1;

            default:
                red = 1'b1;
        endcase
    end

endmodule