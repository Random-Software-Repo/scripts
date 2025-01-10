include ../../MakefileShebangs.mk

.PHONY: all install uninstall locate

PROGRAMS = rplay

default:
	@echo "Installs $(PROGRAMS) into /usr/local/bin."
	@echo ""
	@echo "To install run:"
	@echo "	make install [dir=<optional target directory>]"
	@echo "To uninstall run:"
	@echo "	make uninstall [dir=<optional target directory>]"
	@echo ""
	@echo "Where <optional target directory> is the location you "
	@echo "wish to install ticker to if different from the default."


install: setup
	cd $(WORKING);cp -f $(PROGRAMS) "$(dir)/"
	cd "$(dir)"; chmod 755 $(PROGRAMS) 
	cd "$(dir)";ln -sf "./$(PROGRAMS)" "./rvolumeup"
	cd "$(dir)";ln -sf "./$(PROGRAMS)" "./rvolumedown"

	
uninstall:
	cd "$(dir)"; rm -f $(PROGRAMS) rvolumeup rvolumedown

