VERSION ?= 0.0.0

SRC = $(sort $(wildcard scad/*.scad))
STL = $(SRC:scad/%.scad=stl/%.stl)
DAT = $(STL:stl/%.stl=parts/%.dat)
PNG = $(STL:stl/%.stl=png/%.png)

all: parts.lst $(PNG)

parts.lst: $(DAT)
	@ldraw-mklist -n -i parts

stl/%.stl: scad/%.scad scad/bitbeam-lib/bitbeam-lib.scad
	@echo "$< -> $@"
	@[ -d stl ] || mkdir stl
	@openscad -o $@ $<

parts/%.dat: stl/%.stl
	@[ -f catalog.db ] || (sqlite3 catalog.db < catalog.sql && \
		sqlite3 catalog.db "INSERT INTO release VALUES \
		    ('$(VERSION)', CAST(strftime('%s', CURRENT_TIMESTAMP) as integer));")
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
		sqlite3 catalog.db "INSERT OR REPLACE INTO parts VALUES ('$$NAME', '$*');" && \
		[ -n "$$CATEGORY" ] || CATEGORY=Beam && \
		for cat in `echo $$CATEGORY`; do \
			sqlite3 catalog.db "INSERT OR IGNORE INTO categories VALUES ('$$cat');"; \
			sqlite3 catalog.db "INSERT OR IGNORE INTO parts_categories VALUES ('$$cat', '$*');"; \
		done \
	)
	@tail -n +4 .tmp.dat >> $@
	@rm .tmp.dat

png/%.png: stl/%.stl
	@echo "$< -> $@"
	@[ -d png ] || mkdir png
	@# default is  000066 007fff ffffff
	@#stl-thumb $< $@ -m 000010 322AAF ffffff
	@stl-thumb $< $@ -s 256

release: m-bitbeam-stl-$(VERSION).zip \
	m-bitbeam-parts-$(VERSION).zip \
	m-bitbeam-catalog-$(VERSION).zip

m-bitbeam-stl-$(VERSION).zip: $(STL) LICENSE.md AUTHORS
	zip $@ stl/bb-*.stl stl/washer-*.stl LICENSE.md AUTHORS

m-bitbeam-parts-$(VERSION).zip: parts.lst LICENSE.md AUTHORS
	zip $@ parts/*.dat parts.lst LICENSE.md AUTHORS

m-bitbeam-catalog-$(VERSION).zip: parts.lst $(PNG) LICENSE.md AUTHORS
	zip $@ png/*.png catalog.db LICENSE.md AUTHORS

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
