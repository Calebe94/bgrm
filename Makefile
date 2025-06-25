##
# Background Remover
#
# @file
# @version 0.1

.POSIX:

prefix = /usr/local
name = bgrm

all:
	@echo "all target"

install:
	@echo "Installing ${name}..."
	@install -m 555 ${name} $(DESTDIR)/$(prefix)/bin/
	@install -m 555 ${name}.desktop $(DESTDIR)/$(prefix)/share/applications/
	@echo "done!"

clean:
	@echo "Cleaning ${name}"

distclean: clean

uninstall:
	@echo "Uninstall ${name}"
	@rm -f $(DESTDIR)/$(prefix)/bin/${name}
	@rm -f $(DESTDIR)/$(prefix)/share/applications/${name}.desktop
	@echo "done!"

.PHONY: all install clean distclean uninstall

# end
