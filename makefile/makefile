CC= ghdl
GFLAGS= --workdir=work
FILE= adder
WAVEVIEW= gtkwave
#STOP_TIME = 100ns
#GHDL_SIM_STOP= --stop-time=$(STOP_TIME)
SIMFLAG= --stop-time=500ns

all: clean make view

compile:
	$(CC) -a $(FILE).vhdl
	$(CC) -a $(FILE)_tb.vhdl
	$(CC) -e $(FILE)_tb
	$(CC) -r $(FILE)_tb --vcd=$(FILE).vcd

view: adder.vcd
	$(WAVEVIEW) $(FILE).vcd


.PHONY: clean

clean:
	rm -rf $(FILE).vcd
