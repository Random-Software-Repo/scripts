include ../../MakefileShebangs.mk

PROGRAMS = videodownload
LINKS = ya yf y3 y360 y4 y420 y5 y540 y6 y640 y7 y720 y10 y1080 y4k y2160 xy10 xy7

default:
	@echo "Installs or uninstalls $(PROGRAMS) into /usr/local/bin (or an alternate)."
	@echo ""
	@echo "To install run:"
	@echo "	make install [dir=<optional target directory>]"
	@echo ""
	@echo "Where <optional target directory> is the location you wish to"
	@echo "install $(PROGRAMS) if that differs from the default /usr/local/bin."
	@echo "Installing to /usr/local/bin will require root and so the actual"
	@echo "command to install audio2audio would be:"
	@echo "	sudo make install"
	@echo ""
	@echo "To Uninstall run:"
	@echo "	make uninstall [dir=<optional target directory>]"
	@echo "or"
	@echo "	sudo make uninstall [dir=<optional target directory>]"

link:
	echo "1"
	
uninstall: 
	@cd "$(dir)"; rm -f $(PROGRAMS)
	@cd "$(dir)"; rm -f $(LINKS)

install: setup
	@cd $(WORKING);cp -f $(PROGRAMS) "$(dir)/"
	@cd "$(dir)"; chmod 755 $(PROGRAMS) 
	@for link in $(LINKS) ; do \
		cd "$(dir)"; ln -sf "./$(PROGRAMS)" $$link ; \
		done
