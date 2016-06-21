SCRIPT = shrender
VERSION = 0.0.1

MKDIR = mkdir -p
CP = cp -rvfa

PREFIX=/usr/local
BINDIR=$(PREFIX)/bin
SHAREDIR=$(PREFIX)/share/$(SCRIPT)

.PHONY: test

install: 
	$(MKDIR) $(BINDIR)
	$(CP) $(SCRIPT) $(BINDIR)
	chmod a+x $(BINDIR)/$(SCRIPT)
	$(MKDIR) $(SHAREDIR)
	$(CP) -t $(SHAREDIR) LICENSE deps

uninstall:
	$(RM) $(BINDIR)/$(SCRIPT)
	$(RM) $(SHAREDIR)

test:
	SHLOG_USE_STYLES_STDERR=false SHLOG_FORMAT="    #%level %module %msg" ./test/tsht |tap-spec
