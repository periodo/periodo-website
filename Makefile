INSTALL_ROOT := $(shell stack path --local-install-root)

$(INSTALL_ROOT)/bin/site:
	stack build

_site: $(INSTALL_ROOT)/bin/site
	stack exec site build

.PHONY: watch
watch: $(INSTALL_ROOT)/bin/site
	stack exec site watch

.PHONY: deploy
deploy: _site
	echo "perio.do" > "$</CNAME"
	rm -rf "$</.git"
	git -C $< init
	git -C $< add .
	git -C $< commit -m "Generated on $(shell date)"
	git -C $< remote add origin "git@github.com:periodo/periodo-website.git"
	git -C $< push -f origin main:main

.PHONY: clean
clean:
	rm -rf _site _cache .stack-work
