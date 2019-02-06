SRC = $(wildcard *.scad)
STL := $(SRC:%.scad=stl/%.stl)

# append stl from other sources
STL += $(filter-out $(STL), $(wildcard stl/*.stl))
DAT = $(STL:stl/%.stl=parts/%.dat)


all: $(STL) parts.lst

parts.lst: $(DAT)
	@ldraw-mklist -n -i parts

stl/%.stl: %.scad
	@echo "$< -> $@"
	@openscad -o $@ $<

parts/%.dat: stl/%.stl headers/%.dat
	@echo "$< -> $@"
	@echo 'scale([2.5, 2.5, 2.5]) rotate([90, 0, 0]) import("$<");' > .tmp.scad
	@openscad -o .tmp.stl .tmp.scad && rm .tmp.scad
	@stl2dat .tmp.stl > /dev/null && rm -r .tmp.stl
	test -f headers/$*.dat && cat headers/$*.dat > $@ || sed 's/{file}/parts\/$*.dat/' headers/default.dat > $@
	@tail -n +4 .tmp.dat >> $@
	@rm .tmp.dat
