include ../../MakefileShebangs.mk

.PHONY: all install uninstall locate

PROGRAMS = countrycode
RESOURCE = countrycodes

default:
	@echo "Installs or uninstalls $(PROGRAMS) into /usr/local/bin (or an alternate)."
	@echo ""
	@echo "To install run:"
	@echo "	make install [dir=<optional target directory>]"
	@echo ""
	@echo "Where <optional target directory> is the location you wish to"
	@echo "install $(PROGRAMS) if that differs from the default /usr/local/bin."
	@echo "By default, the areacodes database (a text file) will be installed"
	@echo "to /usr/local/share/areacode/areacodes."
	@echo "If alternate location is used, the data files will be installed in"
	@echo "<optional target directory>/../share/countrycodes rather than the default."
	@echo ""
	@echo "Installing to /usr/local/bin will require root and so the actual"
	@echo "command to install $(PROGRAMS) would be:"
	@echo "	sudo make install"
	@echo ""
	@echo "To Uninstall run:"
	@echo "	make uninstall [dir=<optional target directory>]"
	@echo "or"
	@echo "	sudo make uninstall [dir=<optional target directory>]"


uninstall:
	cd "$(dir)"; rm -f $(PROGRAMS)
	rm -rf "$(dir)/../share/$(RESOURCE)"

install: setup
	cd $(WORKING);cp -f $(PROGRAMS) "$(dir)/"
	cd "$(dir)"; chmod 755 $(PROGRAMS) 
	mkdir -p "$(dir)/../share/$(RESOURCE)"
	chmod 755 "$(dir)/../share"
	chmod 755 "$(dir)/../share/$(RESOURCE)"
	cp -f $(RESOURCE) "$(dir)/../share/$(RESOURCE)/"
	chmod 644 "$(dir)/../share//$(RESOURCE)/$(RESOURCE)"
