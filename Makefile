SRC = $(wildcard *.scad)
STL := $(SRC:%.scad=stl/%.stl)

# append stl from other sources
STL += $(filter-out $(STL), $(wildcard stl/*.stl))
DAT = $(STL:stl/%.stl=parts/%.dat)

all: $(STL) parts.lst stl

parts.lst: $(DAT)
	@ldraw-mklist -n -i parts

stl: $(SRC:%.scad=stl/%.stl)

stl/%.stl: %.scad bitbeam-lib/bitbeam-lib.scad
	@echo "$< -> $@"
	@openscad -o $@ $<

parts:
	@mkdir -p parts

parts/%.dat: stl/%.stl headers/%.dat parts
	@echo "$< -> $@"
	@echo 'scale([2.5, 2.5, 2.5]) rotate([90, 0, 0]) import("$<");' > .tmp.scad
	@openscad -o .tmp.stl .tmp.scad && rm .tmp.scad
	@stl2dat .tmp.stl > /dev/null && rm -r .tmp.stl
	@test -f headers/$*.dat && cat headers/$*.dat > $@ || sed 's/{file}/parts\/$*.dat/' headers/default.dat > $@
	@tail -n +4 .tmp.dat >> $@
	@rm .tmp.dat

release: m-bitbeam-stl-$(VERSION).zip m-bitbeam-parts-$(VERSION).zip

m-bitbeam-stl-$(VERSION).zip: $(STL) LICENSE.md
	zip stl/*.stl LICENSE.md

m-bitbeam-parts-$(VERSION).zip: parts.lst LICENSE.md
	zip $@ parts/*.dat parts.lst LICENSE.md

docker-build:
	docker build \
		-f Dockerfile \
		-t m-bitbeam .
	docker run \
		--rm \
		-w "$(CURDIR)" \
		-v "$(CURDIR):$(CURDIR)" \
		"m-bitbeam"

docker-console:
	docker build \
		-f Dockerfile \
		-t m-bitbeam .
	docker run \
		-ti \
		--rm \
		-w "$(CURDIR)" \
		-v "$(CURDIR):$(CURDIR)" \
		"m-bitbeam" \
		bash

clean:
	rm -f $(SRC:%.scad=stl/%.stl)
	rm -f $(DAT)
	rm -f parts.lst
	rm -f *.zip
