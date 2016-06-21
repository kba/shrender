SCRIPT = shrender
VERSION = 0.0.1

MKDIR = mkdir -p
CP = cp -rvfa
RM = rm -rfv

PREFIX=/usr/local
BINDIR=$(PREFIX)/bin
SHAREDIR=$(PREFIX)/share/$(SCRIPT)

.PHONY: test deps

test:
	SHLOG_TERM=debug SHLOG_FORMAT="    #%level %module %msg" ./test/tsht

deps:
	bpkg getdeps

install: 
	$(MKDIR) $(BINDIR)
	sed 's,SHRENDERSHARE=.*,SHRENDERSHARE="$(SHAREDIR)",' $(SCRIPT) > $(BINDIR)/$(SCRIPT)
	chmod a+x $(BINDIR)/$(SCRIPT)
	$(MKDIR) $(SHAREDIR)
	$(CP) -t $(SHAREDIR) LICENSE deps

uninstall:
	$(RM) $(BINDIR)/$(SCRIPT)
	$(RM) $(SHAREDIR)
