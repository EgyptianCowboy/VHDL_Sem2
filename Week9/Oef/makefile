CC = ghdl
PROG = opdr91.vcd
DEPS = opdr91.vhd opdr91_tb.vhd
MAIN = opdr91.vhd
TB = opdr91_tb
WAVE = gtkwave

$(PROG): $(DEPS)
	$(CC) -a $(MAIN)
	$(CC) -a $(TB).vhd
	$(CC) -e $(TB)
	$(CC) -r $(TB) --vcd=$(PROG)
	$(WAVE) $(PROG) &
