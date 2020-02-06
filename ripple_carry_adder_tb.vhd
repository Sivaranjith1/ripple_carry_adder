library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ripple_carry_adder_tb is
end ripple_carry_adder_tb;

architecture behave of ripple_carry_adder_tb is
    signal r_Input1 : std_logic_vector(1 downto 0);
    signal r_Input2 : std_logic_vector(1 downto 0);
    signal r_Carry  : std_logic := '0';

    signal w_Sum : std_logic_vector(1 downto 0);
    signal w_Carry : std_logic;

begin
    UUT : entity work.ripple_carry_adder
        port map (
            i_inp_rp_1  => r_Input1,
            i_inp_rp_2 => r_Input2,
            i_carry_rp => r_Carry,

            o_sum_rp => w_Sum,
            o_carry_rp => w_Carry 
        );

    process is
    begin
        r_Input1 <= "00";
        r_Input2 <= "00";
        r_Carry <= '0';
        wait for 10ns;
        
        r_Input1 <= "01";
        r_Input2 <= "00";
        r_Carry <= '0';
        wait for 10ns;

        r_Input1 <= "10";
        r_Input2 <= "00";
        r_Carry <= '0';
        wait for 10ns;
        
        r_Input1 <= "11";
        r_Input2 <= "00";
        r_Carry <= '0';
        wait for 10ns;

        r_Input1 <= "00";
        r_Input2 <= "01";
        r_Carry <= '0';
        wait for 10ns;
        
        r_Input1 <= "01";
        r_Input2 <= "10";
        r_Carry <= '0';
        wait for 10ns;

        r_Input1 <= "10";
        r_Input2 <= "11";
        r_Carry <= '0';
        wait for 10ns;


        --Carry with 1
        r_Input1 <= "00";
        r_Input2 <= "00";
        r_Carry <= '1';
        wait for 10ns;
        
        r_Input1 <= "01";
        r_Input2 <= "00";
        r_Carry <= '1';
        wait for 10ns;

        r_Input1 <= "10";
        r_Input2 <= "00";
        r_Carry <= '1';
        wait for 10ns;
        
        r_Input1 <= "11";
        r_Input2 <= "00";
        r_Carry <= '1';
        wait for 10ns;

        r_Input1 <= "00";
        r_Input2 <= "01";
        r_Carry <= '1';
        wait for 10ns;
        
        r_Input1 <= "01";
        r_Input2 <= "10";
        r_Carry <= '1';
        wait for 10ns;

        r_Input1 <= "10";
        r_Input2 <= "11";
        r_Carry <= '1';
        wait for 10ns;


    end process;

end behave;