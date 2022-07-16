DESTDIR =
PREFIX  =/usr/local
HEADERS =str/asprintfa.h str/strdupa.h

## -------------
all:
install: 
	mkdir -p $(DESTDIR)$(PREFIX)/include/str
	cp $(HEADERS) $(DESTDIR)$(PREFIX)/include/str
clean:
## -- manpages --
ifneq ($(PREFIX),)
MAN_3=./doc/asprintfa.3 
install: install-man3
install-man3: $(MAN_3)
	mkdir -p $(DESTDIR)$(PREFIX)/share/man/man3
	cp $(MAN_3) $(DESTDIR)$(PREFIX)/share/man/man3
endif
## -- manpages --
## -- license --
ifneq ($(PREFIX),)
install: install-license
install-license: LICENSE
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/c-alloca
	cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/c-alloca
endif
## -- license --
