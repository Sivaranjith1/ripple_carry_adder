library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ripple_carry_adder is
    port(
        i_inp_rp_1 : in std_logic_vector(1 downto 0);
        i_inp_rp_2 : in std_logic_vector(1 downto 0);
        i_carry_rp : in std_logic;

        o_sum_rp : out std_logic_vector(1 downto 0);
        o_carry_rp : out std_logic
    );
end ripple_carry_adder;

architecture rtl of ripple_carry_adder is

    signal w_Sum : std_logic_vector(1 downto 0);
    signal w_Carry : std_logic_vector(2 downto 0);

begin

    w_Carry(0) <= i_carry_rp;

    FULL_ADDER_1 : entity work.full_adder
        port map(
            i_inp1 => i_inp_rp_1(0),
            i_inp2 => i_inp_rp_2(0),
            i_carry => w_Carry(0),

            o_sum => w_Sum(0),
            o_carry => w_Carry(1)
        );

    FULL_ADDER_2 : entity work.full_adder
        port map(
            i_inp1 => i_inp_rp_1(1),
            i_inp2 => i_inp_rp_2(1),
            i_carry => w_Carry(1),

            o_sum => w_Sum(1),
            o_carry => w_Carry(2)
        );

    o_sum_rp <= w_Sum;
    o_carry_rp <= w_Carry(2);

end rtl;