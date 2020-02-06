# Ripple carry adder with 2 FA
This is a ripple carry adder created by adding to full adders together.

## ripple_carry_adder.vhd
The ripple_carry_adder entity is placed here. It has an input carry and an output carry bit.

```vhdl
entity ripple_carry_adder is
    port(
        i_inp_rp_1 : in std_logic_vector(1 downto 0);
        i_inp_rp_2 : in std_logic_vector(1 downto 0);
        i_carry_rp : in std_logic;

        o_sum_rp : out std_logic_vector(1 downto 0);
        o_carry_rp : out std_logic
    );
end ripple_carry_adder;
```

## full_adder.vhd
This file contains an basic full adder.

```vhdl
entity full_adder is
    port(
        i_inp1 : in std_logic;
        i_inp2 : in std_logic;
        i_carry : in std_logic;

        o_sum: out std_logic;
        o_carry: out std_logic
    );
end;
```