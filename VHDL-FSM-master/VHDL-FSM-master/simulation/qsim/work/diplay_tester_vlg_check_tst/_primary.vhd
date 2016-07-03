library verilog;
use verilog.vl_types.all;
entity diplay_tester_vlg_check_tst is
    port(
        cents0          : in     vl_logic_vector(6 downto 0);
        cents1          : in     vl_logic_vector(6 downto 0);
        reais0          : in     vl_logic_vector(6 downto 0);
        reais1          : in     vl_logic_vector(6 downto 0);
        test            : in     vl_logic_vector(11 downto 0);
        sampler_rx      : in     vl_logic
    );
end diplay_tester_vlg_check_tst;
