SOURCE_MAPS=$(wildcard maps/*.s)
COMPILED_MAPS=$(patsubst %.s, %.bin, $(SOURCE_MAPS))

all: prepare save.sav maps

clean:
	rm -rf intermediate/*
	mkdir -p intermediate/maps
	rm -f maps/*.bin
	rm save.sav
	rm save.js
	rm main.sym

prepare:
	mkdir -p intermediate/maps

save.sav: base.sav main.s charmap.txt
	"tools/preproc/preproc" main.s charmap.txt > intermediate/main.preproc.s
	arm-none-eabi-as -march=armv4t intermediate/main.preproc.s -o intermediate/main.o
	arm-none-eabi-objdump -r intermediate/main.o | python3 tools/verify_object.py 
	arm-none-eabi-objdump -t -j .text intermediate/main.o > main.sym
	arm-none-eabi-objdump -t -j .text intermediate/main.o | python3 tools/make_save_inc.py
	arm-none-eabi-objcopy -O binary intermediate/main.o intermediate/main.dmp
	python3 tools/save_construct.py base.sav intermediate/main.dmp
	python3 tools/make_js_save.py

maps: $(COMPILED_MAPS) save.sav
	rm -rf intermediate/*

$(COMPILED_MAPS): maps/%.bin : maps/%.s
	"tools/preproc/preproc" $< charmap.txt > intermediate/$<.preproc.s
	arm-none-eabi-as intermediate/$<.preproc.s -o intermediate/$<.o
	arm-none-eabi-objdump -r intermediate/$<.o | python3 tools/verify_object.py 
	arm-none-eabi-objcopy -O binary intermediate/$<.o $<.dmp
	dd bs=33652736 skip=1 if=$<.dmp of=$@
	rm $<.dmp intermediate/$<.o
