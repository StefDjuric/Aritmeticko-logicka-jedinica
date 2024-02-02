LIBRARY IEEE;
USE	IEEE.STD_LOGIC_1164.ALL;

LIBRARY WORK;
USE WORK.ALUPaket.ALL;

ENTITY ALU_jedinica IS
	PORT(	Ulaz1, Ulaz2	:	IN		STD_LOGIC_VECTOR(7 DOWNTO 0);
			Izlaz				:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);
			Selekcija		:	IN		STD_LOGIC_VECTOR(3 DOWNTO 0)
			);
END ENTITY ALU_jedinica;

ARCHITECTURE arh_alu OF ALU_jedinica IS
SIGNAL arit_izlaz, log_izlaz:	STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
	Arit: arit_jedinica PORT MAP(Ulaz1, Ulaz2, arit_izlaz, Selekcija (2 DOWNTO 0));
	Log : log_jedinica  PORT MAP(Ulaz1, Ulaz2, log_izlaz, Selekcija(2 DOWNTO 0));
	Mux : multipleksor  PORT MAP(arit_izlaz, log_izlaz, Izlaz, Selekcija(3));
END ARCHITECTURE arh_alu;