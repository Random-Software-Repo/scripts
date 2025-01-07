include ../../MakefileShebangs.mk

PROGRAM = ffm
PROGRAMS = ffm ffmx ffmsplit

default:
	@echo "Installs or uninstalls $(PROGRAMS) into /usr/local/bin (or an alternate)."
	@echo ""
	@echo "To install run:"
	@echo "	make install [dir=<optional target directory>]"
	@echo ""
	@echo "Where <optional target directory> is the location you wish to"
	@echo "install $(PROGRAMS) if that differs from the default /usr/local/bin."
	@echo "Installing to /usr/local/bin will require root and so the actual"
	@echo "command to install ${PROGRAMS} would be:"
	@echo "	sudo make install"
	@echo ""
	@echo "To Uninstall run:"
	@echo "	make uninstall [dir=<optional target directory>]"
	@echo "or"
	@echo "	sudo make uninstall [dir=<optional target directory>]"



uninstall: 
	cd "$(dir)";rm -f $(PROGRAMS)
	cd "$(dir)"; rm -f ffmcp ffmcpy ffmcopy x265 x264 xhevc xavc xav1

install: setup
	cd $(WORKING);cp -f $(PROGRAMS) "$(dir)/"
	cd "$(dir)"; chmod 755 $(PROGRAMS) 
	cd "$(dir)";ln -sf "./$(PROGRAM)" "./ffmcp"
	cd "$(dir)";ln -sf "./$(PROGRAM)" "./ffmcpy"
	cd "$(dir)";ln -sf "./$(PROGRAM)" "./ffmcopy"
	cd "$(dir)";ln -sf "./$(PROGRAM)" "./x264"
	cd "$(dir)";ln -sf "./$(PROGRAM)" "./x265"
	cd "$(dir)";ln -sf "./$(PROGRAM)" "./xhevc"
	cd "$(dir)";ln -sf "./$(PROGRAM)" "./xavc"
	cd "$(dir)";ln -sf "./$(PROGRAM)" "./xav1"
