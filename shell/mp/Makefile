include ../../MakefileShebangs.mk

.PHONY: all install uninstall locate

PROGRAMS = mp

default:
	@echo "Installs or uninstalls $(PROGRAMS) into /usr/local/bin (or an alternate)."
	@echo ""
	@echo "To install run:"
	@echo "	make install [dir=<optional target directory>]"
	@echo ""
	@echo "Where <optional target directory> is the location you wish to"
	@echo "install $(PROGRAMS) if that differs from the default /usr/local/bin."
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

install: setup
	cd $(WORKING);cp -f $(PROGRAMS) "$(dir)/"
	cd "$(dir)"; chmod 755 $(PROGRAMS) 
