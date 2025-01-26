
SUBDIRS = areacodes audio2audio countrycodes ffm mp rename script_collection ticker tmuxx volumecontrol word
TOPTARGETS := install uninstall
.PHONY: all $(TOPTARGETS) $(SUBDIRS)
all:
	@echo "Installs or uninstalls the following script (packages) into "
	@echo "/usr/local/bin (or an alternate directory):"
	@echo ""
	@echo "$(SUBDIRS)"
	@echo ""
	@echo "To install run:"
	@echo "	make install [dir=<optional target directory>]"
	@echo ""
	@echo "Where <optional target directory> is the location into which you wish"
	@echo "to install all the packages, if that differs from the default /usr/local/bin."
	@echo "Several packages install resources to be used by the programs. These"
	@echo "resources will, by default, install to /usr/local/share. If another"
	@echo "target has been specified, those resources will be installed there instead."
	@echo ""
	@echo "Installing to /usr/local/bin will require root and so the actual"
	@echo "command to install ${PROGRAM} would be:"
	@echo "	sudo make install"
	@echo ""
	@echo "To Uninstall run:"
	@echo "	make uninstall [dir=<optional target directory>]"
	@echo "or"
	@echo "	sudo make uninstall [dir=<optional target directory>]"

print:
	@echo "Base Dir     = $(dir)"
	@echo "Resource Dir = $(resourcedir)"



$(TOPTARGETS): $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

