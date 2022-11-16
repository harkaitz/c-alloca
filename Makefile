DESTDIR =
PREFIX  =/usr/local
HEADERS =str/asprintfa.h str/strdupa.h

## -------------
all:
	@true
install:
	@echo 'I include/str/ $(HEADERS)'
	@mkdir -p $(DESTDIR)$(PREFIX)/include/str
	@cp $(HEADERS) $(DESTDIR)$(PREFIX)/include/str
clean:
	@true
## -- manpages --
install: install-man3
install-man3:
	@echo 'I share/man/man3/'
	@mkdir -p $(DESTDIR)$(PREFIX)/share/man/man3
	@echo 'I share/man/man3/asprintfa.3'
	@cp ./doc/asprintfa.3 $(DESTDIR)$(PREFIX)/share/man/man3
## -- manpages --
## -- license --
install: install-license
install-license: LICENSE
	@echo 'I share/doc/c-alloca/LICENSE'
	@mkdir -p $(DESTDIR)$(PREFIX)/share/doc/c-alloca
	@cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/c-alloca
## -- license --
