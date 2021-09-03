prefix = /usr/local
bindir = $(prefix)/bin

all: ghget

install: ghget
	install -d $(DESTDIR)$(bindir)
	install ghget $(DESTDIR)$(bindir)
