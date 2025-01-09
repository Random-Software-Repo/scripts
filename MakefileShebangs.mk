zshlocation = $$(which zsh | sed 's/\//\\\//g')
bashlocation = $$(which bash | sed 's/\//\\\//g')
pythonlocation = $$(which python | sed 's/\//\\\//g')
perllocation = $$(which perl | sed 's/\//\\\//g')

WORKING = .working
basedir = /usr/local/bin
dir = $(basedir)

.DEFAULT_GOAL := default1

default1: default
	@echo ""
	@echo "This Makefile will also locate the default locations of scripting"
	@echo "interpreters (zsh, bash, perl, and python). These paths will be"
	@echo "inserted into the script files themselves as the appropriate"
	@echo "shebang (#!/path/to/interpreter) for each script, replacing "
	@echo "the existing shebang with the correct one."
	@echo ""
	@echo "These paths can be overridden when calling make by providing the"
	@echo "needed path using command line variables. The paths must have the"
	@echo "slashes escaped."
	@echo "The variables are:"
	@echo "    zshlocation, bashlocation, perllocation, and pythonlocation"
	@echo "This would most likely be used when building for an alternate platform"
	@echo "on which the paths differ from the current platform (e.g. building for"
	@echo "FreeBSD on Linux or vise-versa)."
	@echo ""
	@echo "For example:"
	@echo "    make install dir=/usr/local/bin zshlocation='\\/usr\\/local\\/bin\\/zsh'"
	@echo ""
	@exit

clean:
	@if [ -d ./$(WORKING) ]; \
	then \
		rm -rf $(WORKING); \
	fi

setup: clean
	@mkdir $(WORKING)

	@for d in $(PROGRAMS); \
	do \
		echo "Program: $${d}"; \
		grep -q '^#!.*/zsh' "$${d}" && sed "s/^#!.*\/zsh/#!$(zshlocation)/g" "$${d}" > "./$(WORKING)/$${d}"; \
		grep -q '^#!.*/bash' "$${d}" && sed "s/^#!.*\/bash/#!$(bashlocation)/g" "$${d}" > "./$(WORKING)/$${d}"; \
		grep -q '^#!.*/perl' "$${d}" && sed "s/^#!.*\/perl/#!$(perllocation)/g" "$${d}" > "./$(WORKING)/$${d}"; \
		grep -q '^#!.*/python' "$${d}" && sed "s/^#!.*\/python/#!$(pythonlocation)/g" "$${d}" > "./$(WORKING)/$${d}"; \
		grep -q '^#!\/bin\/sh' "$${d}" && cp "$${d}" "./$(WORKING)/$${d}"; \
		chmod 755 "./$(WORKING)/$${d}"; \
	done;
