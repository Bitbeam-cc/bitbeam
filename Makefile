SRC = $(wildcard *.scad)
STL := $(SRC:%.scad=stl/%.stl)

# append stl from other sources
STL += $(filter-out $(STL), $(wildcard stl/*.stl))
DAT = $(STL:stl/%.stl=parts/%.dat)


all: $(STL) parts.lst

parts.lst: $(DAT)
	@ldraw-mklist -n -i parts

stl/%.stl: %.scad
	@mkdir -p stl
	@echo "$< -> $@"
	@openscad -o $@ $<


parts/%.dat: stl/%.stl
	@mkdir -p parts
	@echo "$< -> $@"
	@#@echo 'scale([2.5, 2.5, 2.5]) rotate([90, 0, 0]) translate([0, 0, 4]) import("$<");' > .tmp.scad
	@echo 'scale([2.5, 2.5, 2.5]) rotate([90, 0, 0]) import("$<");' > .tmp.scad
	@openscad -o .tmp.stl .tmp.scad
	@stl2dat .tmp.stl > /dev/null
	@# TODO: metafile ze kterych se budou hlavicky skladat
	@echo "0 {name}\n0 Name: $@\n0 Author: Ondrej Tuma\n0 !CATEGORY Technic\n\n" > $@
	@tail -n +4 .tmp.dat >> $@

debug:
	@printf "$(DAT)\n"
	@printf "$(STL)\n"
