include ../../MakefileShebangs.mk

.PHONY: all install uninstall locate

PROGRAMS = word
RESOURCE = words

default:
	@echo "Installs or uninstalls $(PROGRAMS) into /usr/local/bin (or an alternate),"
	@echo "and it's corresponding data files into /usr/local/share/words."
	@echo ""
	@echo "To install run:"
	@echo "	make install [dir=<optional target directory>]"
	@echo ""
	@echo "Where <optional target directory> is the location you wish to install"
	@echo "$(PROGRAMS) if that differs from the default /usr/local/bin. if an"
	@echo "alternate location is used, the data files will be installed in"
	@echo "<optional target directory>/../share/words rather than the default."
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
	cd "$(dir); rm -f $(PROGRAMS) wordsstartingwith wordscontaining wordsendingwith"
	rm -rf "$(dir)/../share/$(RESOURCE)"

install: setup
	cd $(WORKING);cp -f $(PROGRAMS) "$(dir)/"
	cd "$(dir)"; chmod 755 $(PROGRAMS) 
	cd "$(dir)/"; ln -sf ./$(PROGRAMS) ./wordsstartingwith
	cd "$(dir)/"; ln -sf ./$(PROGRAMS) ./wordscontaining
	cd "$(dir)/"; ln -sf ./$(PROGRAMS) ./wordsendingwith
	mkdir -p "$(dir)/../share/words"
	chmod 755 "$(dir)/../share"
	chmod 755 "$(dir)/../share/words"
	cp -f $(RESOURCE) "$(dir)/../share/words/"
	chmod 644 "$(dir)/../share/words/$(RESOURCE)"
