SRC = $(sort $(wildcard scad/*.scad))
STL = $(SRC:scad/%.scad=stl/%.stl)
DAT = $(STL:stl/%.stl=parts/%.dat)

all: parts.lst

parts.lst: $(DAT)
	@ldraw-mklist -n -i parts

stl:
	@mkdir -p stl

stl/%.stl: scad/%.scad scad/bitbeam-lib/bitbeam-lib.scad stl
	@echo "$< -> $@"
	@openscad -o $@ $<

parts:
	@mkdir -p parts

parts/%.dat: stl/%.stl parts
	@echo "$< -> $@"
	@echo 'scale([2.5, 2.5, 2.5]) rotate([90, 0, 0]) import("$<");' > .tmp.scad
	@openscad -o .tmp.stl .tmp.scad && rm .tmp.scad
	@(	NAME=`sed -n "s/.*NAME:\s*\(.*\)\s*/\1/p" scad/$*.scad` && \
		COLOR=`sed -n "s/.*COLOR:\s*\(.*\)\s*/\1/p" scad/$*.scad` && \
		CATEGORY=`sed -n "s/.*CATEGORY:\(.*\)\s*/\1/p" scad/$*.scad` && \
		[ -n "$$NAME" ] || NAME=$* && \
		[ -n "$$COLOR" ] || COLOR=16 && \
		stl2dat .tmp.stl -ldraw -c1 $$COLOR -c3 $$COLOR -c4 $$COLOR > /dev/null && rm -r .tmp.stl && \
		sed "s/{name}/$$NAME/; s/{file}/parts\/$*.dat/; s/{category}/$$CATEGORY/" header.dat > $@ \
	)
	@tail -n +4 .tmp.dat >> $@
	@rm .tmp.dat

release: m-bitbeam-stl-$(VERSION).zip m-bitbeam-parts-$(VERSION).zip

m-bitbeam-stl-$(VERSION).zip: $(STL) LICENSE.md AUTHORS
	zip $@ stl/bb-*.stl wascher-*.stl LICENSE.md AUTHORS

m-bitbeam-parts-$(VERSION).zip: parts.lst LICENSE.md AUTHORS
	zip $@ parts/*.dat parts.lst LICENSE.md AUTHORS

docker-build:
	docker build \
		-f Dockerfile \
		-t m-bitbeam .
	docker run \
		ls s--rm \
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
	rm -f $(STL)
	rm -f $(DAT)
	rm -f parts.lst
	rm -f *.zip
