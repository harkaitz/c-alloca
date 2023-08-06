# C-ALLOCA

Usefull functions for C that use the stack.

- *asprintfa()* : Like sprintf but outputs to the stack. [./str/asprintfa.h](./str/asprintfa.h) [manpage](./doc/asprintfa.3.md)
- *strdupa()* : Like strdup but to the stack. [./str/strdupa.h](./str/strdupa.h)
- *strcata()* : Concatenate strings in the stack. [./str/strdupa.h](./str/strcata.h)

Example:

```
#define P(TXT) strcata("<p>", TXT, "</p>)

void f() {
    const char *s = "Hello World!";
    fputs(P(s), stdout);
}
```

## Collaborating

For making bug reports, feature requests and donations visit
one of the following links:

1. [gemini://harkadev.com/oss/](gemini://harkadev.com/oss/)
2. [https://harkadev.com/oss/](https://harkadev.com/oss/)
