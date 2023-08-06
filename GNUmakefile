PROJECT =c-alloca
VERSION =1.0.0
DESTDIR =
PREFIX  =/usr/local
HEADERS =str/asprintfa.h str/strdupa.h
all:
clean:
install:
	mkdir -p $(DESTDIR)$(PREFIX)/include/str
	cp $(HEADERS) $(DESTDIR)$(PREFIX)/include/str
## -- BLOCK:license --
install: install-license
install-license: 
	mkdir -p $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
	cp LICENSE README.md $(DESTDIR)$(PREFIX)/share/doc/$(PROJECT)
update: update-license
update-license:
	ssnip README.md
## -- BLOCK:license --
## -- BLOCK:man --
update: update-man
update-man:
	make-h-man update
install: install-man
install-man:
	mkdir -p $(DESTDIR)$(PREFIX)/share/man/man3
	cp ./doc/asprintfa.3 $(DESTDIR)$(PREFIX)/share/man/man3
## -- BLOCK:man --
