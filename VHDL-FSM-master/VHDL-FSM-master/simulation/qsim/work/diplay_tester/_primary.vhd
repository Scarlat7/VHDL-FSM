library verilog;
use verilog.vl_types.all;
entity diplay_tester is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        b25             : in     vl_logic;
        b50             : in     vl_logic;
        b100            : in     vl_logic;
        test            : out    vl_logic_vector(11 downto 0);
        cents0          : out    vl_logic_vector(6 downto 0);
        cents1          : out    vl_logic_vector(6 downto 0);
        reais0          : out    vl_logic_vector(6 downto 0);
        reais1          : out    vl_logic_vector(6 downto 0)
    );
end diplay_tester;
