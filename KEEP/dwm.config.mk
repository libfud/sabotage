# dwm version
VERSION = 6.0

# Customize below to fit your system

# paths
PREFIX =${butch_prefix}
MANPREFIX = ${PREFIX}/share/man

X11INC = ${PREFIX}/include
X11LIB = ${PREFIX}/lib

# Xinerama
XINERAMALIBS = -L${X11LIB} -lXinerama
XINERAMAFLAGS = -DXINERAMA

# includes and libs
INCS = -I. -I/include -I${X11INC}
LIBS = -L/lib -lc -lXau -lXdmcp -lxcb -L${X11LIB} -lX11 -lX11-xcb ${XINERAMALIBS}

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\" ${XINERAMAFLAGS}
CFLAGS = -std=gnu99 -pedantic -Wall -Os ${INCS} ${CPPFLAGS} 
LDFLAGS = -s ${LIBS}

# compiler and linker
CC = musl-gcc
