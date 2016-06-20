SCRIPT = shrender
VERSION = 0.0.1

MKDIR = mkdir -p
CP = cp -rvf

BINDIR=$(PREFIX)/bin
SHAREDIR=$(PREFIX)/share/$(SCRIPT)

install: 
	$(MKDIR) $(SHAREDIR)
	sed 's,^SHRENDERSHARE=.*,SHRENDERSHARE="$(SHAREDIR)",' $(SCRIPT) > $(BINDIR)/$(SCRIPT)
	chmod a+x $(BINDIR)/$(SCRIPT)
	$(MKDIR) $(SHAREDIR)
	$(CP) -t $(SHAREDIR) deps $(wildcard shrender-*) LICENSE

uninstall:
	$(RM) $(BINDIR)/$(SCRIPT)
	$(RM) $(SHAREDIR)

test:
	./test/tsht
