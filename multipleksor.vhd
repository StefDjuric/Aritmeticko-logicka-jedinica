LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY multipleksor IS
	PORT(
			Ulaz1, Ulaz2:	IN	 STD_LOGIC_VECTOR(7 DOWNTO 0);
			Izlaz			:	OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			Selekcija	:	IN	 STD_LOGIC
	);
END ENTITY;

ARCHITECTURE arh_multipleksora OF multipleksor IS
BEGIN
	WITH Selekcija SELECT
		Izlaz <= Ulaz1 WHEN '0',
					Ulaz2 WHEN '1';

END ARCHITECTURE arh_multipleksora;