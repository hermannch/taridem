PREFIX ?= /usr/local
BINDIR = $(PREFIX)/bin
DESTDIR=

all:

install:
	install -Dm0755 taridem $(DESTDIR)$(BINDIR)/taridem

lint:
	-shellcheck taridem
	-shfmt -d -p -ci taridem


.PHONY: all install lint
