SRC = $(sort $(wildcard scad/*.scad))
STL = $(SRC:scad/%.scad=stl/%.stl)
DAT = $(STL:stl/%.stl=parts/%.dat)
PNG = $(STL:stl/%.stl=png/%.png)

all: parts.lst

parts.lst: $(DAT)
	@ldraw-mklist -n -i parts

stl:
	@mkdir -p stl

stl/%.stl: scad/%.scad scad/bitbeam-lib/bitbeam-lib.scad stl
	@echo "$< -> $@"
	@openscad -o $@ $<

catalog.db:
	@sqlite3 catalog.db < catalog.sql

parts/%.dat: stl/%.stl catalog.db
	@echo "$< -> $@"
	@echo 'scale([2.5, 2.5, 2.5]) rotate([90, 0, 0]) import("$<");' > .tmp.scad
	@openscad -o .tmp.stl .tmp.scad && rm .tmp.scad
	@(	NAME=`sed -n "s/.*NAME:\s*\(.*\)\s*/\1/p" scad/$*.scad` && \
		COLOR=`sed -n "s/.*COLOR:\s*\(.*\)\s*/\1/p" scad/$*.scad` && \
		CATEGORY=`sed -n "s/.*CATEGORY:\s*\(.*\)\s*/\1/p" scad/$*.scad` && \
		[ -n "$$NAME" ] || NAME=$* && \
		[ -n "$$COLOR" ] || COLOR=16 && \
		stl2dat .tmp.stl -ldraw -c1 $$COLOR -c3 $$COLOR -c4 $$COLOR > /dev/null && rm -r .tmp.stl && \
		sed "s/{name}/$$NAME/; s/{file}/parts\/$*.dat/; s/{category}/$$CATEGORY/" header.dat > $@ && \
		sqlite3 catalog.db "INSERT INTO parts VALUES ('$$NAME', '$$CATEGORY', '$*');" \
	)
	@tail -n +4 .tmp.dat >> $@
	@rm .tmp.dat

png:
	@mkdir -p png

png/%.png: stl/%.stl png
	@echo "$< -> $@"
	# default is  000066 007fff ffffff
	@stl-thumb $< $@ -m 000010 322AAF ffffff

catalog: $(PNG)
	@echo $(PNG)

release: m-bitbeam-stl-$(VERSION).zip m-bitbeam-parts-$(VERSION).zip

m-bitbeam-stl-$(VERSION).zip: $(STL) LICENSE.md AUTHORS
	zip $@ stl/bb-*.stl washer-*.stl LICENSE.md AUTHORS

m-bitbeam-parts-$(VERSION).zip: parts.lst LICENSE.md AUTHORS
	zip $@ parts/*.dat parts.lst LICENSE.md AUTHORS

docker-build:
	docker build \
		-t ondratu/m-bitbeam .
	docker run \
		--rm \
		-w "$(CURDIR)" \
		-v "$(CURDIR):$(CURDIR)" \
		ondratu/m-bitbeam

docker-console:
	docker build \
		-t ondratu/m-bitbeam .
	docker run \
		-ti \
		--rm \
		-w "$(CURDIR)" \
		-v "$(CURDIR):$(CURDIR)" \
		ondratu/m-bitbeam \
		bash

clean:
	rm -rf stl png
	rm -f $(DAT)
	rm -f parts.lst catalog.db
	rm -f *.zip
	docker rmi -f ondratu/m-bitbeam || true
