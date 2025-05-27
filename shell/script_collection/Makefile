include ../../MakefileShebangs.mk
.PHONY: all install uninstall locate

PROGRAMS = backup_to_usbs beep brightness calvin cuesplit cuesplitr dosfilerename encrypthd fav ffp firefox getNasaTiff getnightly getOots inkscape kill_indexers libreoffice md2pdf mergedirs pmv prefix rchmod renamemusicfiles restartnet restartdns sleeptil smart smart251 smart_lenovo_nvme smart_logger stringoperators tires update-freebsd-bootloader vpn waitmsg 2kml grepscript iso2usb monitorsleep

default:
	@echo "Installs this random assortment of scripts into $(basedir)."
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
