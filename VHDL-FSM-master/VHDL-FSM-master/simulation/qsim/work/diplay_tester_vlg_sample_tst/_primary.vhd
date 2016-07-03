library verilog;
use verilog.vl_types.all;
entity diplay_tester_vlg_sample_tst is
    port(
        b25             : in     vl_logic;
        b50             : in     vl_logic;
        b100            : in     vl_logic;
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end diplay_tester_vlg_sample_tst;
