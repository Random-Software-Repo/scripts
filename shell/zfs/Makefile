include ../../MakefileShebangs.mk
.PHONY: all install uninstall locate

PROGRAMS = zfsl zsnaps

default:
	@echo "Installs this collection of ZFS related scripts into $(basedir)."
	@echo ""
	@echo "To install run:"
	@echo "	make install [dir=<optional target directory>]"
	@echo "To uninstall run:"
	@echo "	make uninstall [dir=<optional target directory>]"
	@echo ""
	@echo "Where <optional target directory> is the location you wish to install"
	@echo "the script collection if that differs from the default $(basedir)."

install: setup
	cd $(WORKING);cp -f $(PROGRAMS) "$(dir)/"
	cd "$(dir)"; chmod 755 $(PROGRAMS) 
	
uninstall:
	cd "$(dir)"; rm -f $(PROGRAMS)

