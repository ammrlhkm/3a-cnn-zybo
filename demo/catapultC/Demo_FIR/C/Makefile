CPPFLAGS+=-I/softslin/catapultc10_5c/Mgc_home/shared/include/ -I../ -I../../ac_fixed/ 

VPATH=./:../

OBJS= FIR_SIMPLE.o FIR_SIMPLE_REFERENCE.o FIR_TESTBENCH.o

FIR_TESTBENCH : $(OBJS)
	g++ -o FIR_TESTBENCH $(OBJS)

clean:
	rm -f $(OBJS) FIR_TESTBENCH  *_signal.txt
