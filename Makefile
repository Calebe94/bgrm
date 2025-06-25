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
	@install -m 555 ${name}.png $(DESTDIR)/$(prefix)/share/icons/
	@echo "done!"

clean:
	@echo "Cleaning ${name}"

distclean: clean

uninstall:
	@echo "Uninstall ${name}"
	@rm -f $(DESTDIR)/$(prefix)/bin/${name}
	@rm -f $(DESTDIR)/$(prefix)/share/applications/${name}.desktop
	@rm -f $(DESTDIR)/$(prefix)/share/icons/${name}.png
	@echo "done!"

.PHONY: all install clean distclean uninstall

# end
