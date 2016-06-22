SCRIPT = shrender
VERSION = 0.0.1

MKDIR = mkdir -p
CP = cp -rvfa
RM = rm -rfv
GIT = git
WGET = wget

PREFIX=/usr/local
BINDIR=$(PREFIX)/bin
SHAREDIR=$(PREFIX)/share/$(SCRIPT)

.PHONY: test deps all

all: deps

#------------------------------------------------------------------------------
# Dependencies
#------------------------------------------------------------------------------
deps: deps/bin/shlog
deps/bin/shlog:
	$(MKDIR) "$(dir $@)" && $(WGET) -O "$@" "https://rawgit.com/kba/shlog/master/shlog" && chmod a+x "$@"

#------------------------------------------------------------------------------
# Clean
#------------------------------------------------------------------------------
clean:
	$(RM) deps

#------------------------------------------------------------------------------
# Install
#------------------------------------------------------------------------------
install: 
	$(MKDIR) $(BINDIR)
	sed 's,SHRENDERSHARE=.*,SHRENDERSHARE="$(SHAREDIR)",' $(SCRIPT) > $(BINDIR)/$(SCRIPT)
	chmod a+x $(BINDIR)/$(SCRIPT)
	$(MKDIR) $(SHAREDIR)
	$(CP) -t $(SHAREDIR) LICENSE deps

#------------------------------------------------------------------------------
# Uninstall
#------------------------------------------------------------------------------
uninstall:
	$(RM) $(BINDIR)/$(SCRIPT)
	$(RM) $(SHAREDIR)

#------------------------------------------------------------------------------
# Test
#------------------------------------------------------------------------------
test: test/tsht
	SHLOG_TERM=debug SHLOG_FORMAT="    #%level %module %msg" ./test/tsht
test/tsht:
	$(MKDIR) "$@" && $(WGET) -O "$@" "https://rawgit.com/kba/tsht/master/tsht"

