COMPILE= ghdl
TB= opdr91_tb
PROG= opdr91
VCD= opdr91.vcd
VIEWER= gtkwave

$(PROG):
	$(COMPILE) -a $(PROG).vhd
	$(COMPILE) -a $(TB).vhd
	$(COMPILE) -e $(TB)
	$(COMPILE) -r $(TB) --vcd=$(VCD)
	$(VIEWER) $(VCD) &
