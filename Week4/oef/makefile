CC= ghdl
GFLAGS= --workdir=work
FILE= opdr5_1
WAVEVIEW= gtkwave
#STOP_TIME = 100ns
#GHDL_SIM_STOP= --stop-time=$(STOP_TIME)
SIMFLAG= --stop-time=500ns

all: clean make view

make:
	$(CC) -a $(FILE).vhd
	$(CC) -a $(FILE)_tb.vhd
	$(CC) -e $(FILE)_tb
	$(CC) -r $(FILE)_tb --vcd=$(FILE).vcd

view: $(FILE).vcd
	$(WAVEVIEW) $(FILE).vcd


.PHONY: clean

clean:
	rm -rf $(FILE).vcd
