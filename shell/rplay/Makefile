include ../../MakefileShebangs.mk

.PHONY: all install uninstall locate

PROGRAMS = rplay bp
SYMLINKS = rvolumeup rvolumedown renterprise rnoise
BPPROGRAM = bp
RPROGRAM = rplay

default:
	@echo "Installs $(PROGRAMS), $(SYMLINKS) into /usr/local/bin."
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
	@for link in $(SYMLINKS); do \
		cd "$(dir)";ln -sf "./$(RPROGRAM)" "$$link"; \
	done
	cd $(WORKING);cp -f $(BPPROGRAM) "$(dir)/"
	cd "$(dir)"; chmod 755 $(BPPROGRAM) 
	
uninstall:
	cd "$(dir)"; rm -f $(PROGRAMS) $(SYMLINKS)

