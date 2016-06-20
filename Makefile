SCRIPT = shrender
VERSION = 0.0.1

MKDIR = mkdir -p
CP = cp -rvfa

PREFIX=/usr/local
BINDIR=$(PREFIX)/bin
SHAREDIR=$(PREFIX)/share/$(SCRIPT)

.PHONY: test

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
	SHLOG_USE_STYLES_STDERR=false SHLOG_FORMAT="    #%level %module %msg" ./test/tsht |tap-spec
