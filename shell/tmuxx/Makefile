.PHONY: all install uninstall locate

PROGRAMS = tmuxx ssht

default:
	@echo "Installs the tmuxx and ssht scripts into /usr/local/bin."
	@echo ""
	@echo "To install run:"
	@echo "	make install [dir=<optional target directory>]"
	@echo "To uninstall run:"
	@echo "	make uninstall [dir=<optional target directory>]"
	@echo ""
	@echo "Where <optional target directory> is the location you wish to install"
	@echo "tmuxx and ssht if that differs from the default /usr/local/bin."
	@echo "Generally, these both should be in /usr/local/bin or somewhere"
	@echo "on all everyone's path."


install:
	cp -f $(PROGRAMS) "$(dir)/"
	cd "$(dir)"; chmod 755 $(PROGRAMS) 
	
uninstall:
	cd "$(dir)"; rm -f $(PROGRAMS)

