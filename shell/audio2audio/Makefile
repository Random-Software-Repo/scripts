include ../../MakefileShebangs.mk

PROGRAMS = audio2audio

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



uninstall: 
	cd "$(dir)"; rm -f $(PROGRAMS)
	cd "$(dir)"; rm -f extract2flac extract2mka extract2mp3 extract2ogg extract2opus extract2wav \
			flac2mka flac2mp3 flac2ogg flac2opus flac2wav mp32mka mp32ogg mp32opus mp32wav \
			ogg2mka ogg2mp3 ogg2opus ogg2wav

install: setup
	cd $(WORKING);cp -f $(PROGRAMS) "$(dir)/"
	cd "$(dir)"; chmod 755 $(PROGRAMS) 
	cd "$(dir)";ln -sf "./$(PROGRAMS)" "./extract2flac"
	cd "$(dir)";ln -sf "./$(PROGRAMS)" "./extract2mka"
	cd "$(dir)";ln -sf "./$(PROGRAMS)" "./extract2mp3"
	cd "$(dir)";ln -sf "./$(PROGRAMS)" "./extract2ogg"
	cd "$(dir)";ln -sf "./$(PROGRAMS)" "./extract2opus"
	cd "$(dir)";ln -sf "./$(PROGRAMS)" "./extract2wav"
	cd "$(dir)";ln -sf "./$(PROGRAMS)" "./flac2mka"
	cd "$(dir)";ln -sf "./$(PROGRAMS)" "./flac2mp3"
	cd "$(dir)";ln -sf "./$(PROGRAMS)" "./flac2ogg"
	cd "$(dir)";ln -sf "./$(PROGRAMS)" "./flac2opus"
	cd "$(dir)";ln -sf "./$(PROGRAMS)" "./flac2wav"
	cd "$(dir)";ln -sf "./$(PROGRAMS)" "./mp32mka"
	cd "$(dir)";ln -sf "./$(PROGRAMS)" "./mp32ogg"
	cd "$(dir)";ln -sf "./$(PROGRAMS)" "./mp32opus"
	cd "$(dir)";ln -sf "./$(PROGRAMS)" "./mp32wav"
	cd "$(dir)";ln -sf "./$(PROGRAMS)" "./ogg2mka"
	cd "$(dir)";ln -sf "./$(PROGRAMS)" "./ogg2mp3"
	cd "$(dir)";ln -sf "./$(PROGRAMS)" "./ogg2opus"
	cd "$(dir)";ln -sf "./$(PROGRAMS)" "./ogg2wav"
