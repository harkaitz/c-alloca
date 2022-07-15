DESTDIR =
PREFIX  =/usr/local
HEADERS =str/asprintfa.h str/strdupa.h

all:
install: 
	mkdir -p $(DESTDIR)$(PREFIX)/include/str
	cp $(HEADERS) $(DESTDIR)$(PREFIX)/include/str

## -- manpages --
install: install-man
install-man: ./doc/asprintfa.3.md 
	mkdir -p $(DESTDIR)$(PREFIX)/share/man/man3
	cp ./doc/asprintfa.3 $(DESTDIR)$(PREFIX)/share/man/man3
## -- manpages --
## -- license --
install: install-license
install-license: LICENSE
	mkdir -p $(DESTDIR)$(PREFIX)/share/c-alloca
	cp LICENSE $(DESTDIR)$(PREFIX)/share/c-alloca
## -- license --
