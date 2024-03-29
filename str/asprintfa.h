#ifndef STR_ASPRINTFA_H
#define STR_ASPRINTFA_H

#include <string.h>
#include <stdio.h>
#include <alloca.h>

#ifdef __GNUC__
#  pragma GCC diagnostic ignored "-Wpedantic" /* ISO-C Doesn't allow ({}). */
#endif

#define asprintfa(FMT, ...) ({                                          \
            char *__buf__;                                              \
            __buf__ = alloca(1 + snprintf(NULL, 0, FMT, __VA_ARGS__));  \
            sprintf(__buf__, FMT, __VA_ARGS__);                         \
            __buf__;                                                    \
        })
#define vasprintfa(FMT, VA) ({                  \
            va_list __va__; char *__buf__;                \
            va_copy(__va__, (VA));                                  \
            __buf__ = alloca(1 + vsnprintf(NULL, 0, FMT, __va__));  \
            va_end(__va__);                                         \
            vsprintf(__buf__, FMT, VA);                         \
            __buf__;                                            \
        })

#endif
/**l*
 * MIT License
 * 
 * Copyright (c) 2023 Harkaitz Agirre, harkaitz.aguirre@gmail.com
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 **l*/
