################################################################################
# Makefile.am generated for use with automake 1.16.1.
#
# Copyright (C) 2018-2019, Webster Technology Consulting.
################################################################################

SUFFIXES = .c .cpp .s .o .h .asm

if DEBUG
  AM_CFLAGS =-I$(top_srcdir)/src/libdmf -I$(top_srcdir)/src/dmfutil -ansi -pedantic -Wall -g -O3
else
  AM_CFLAGS =-I$(top_srcdir)/src/libdmf -I$(top_srcdir)/src/dmfutil -ansi -pedantic -Wall -O3
endif

# AM_CFLAGS += $(GLIB_CFLAGS)
# AM_CFLAGS += $(SQLITE3_CFLAGS)

bin_PROGRAMS = dmfutil
dmfutil_SOURCES = dmfutil.c

dmfutil_LDADD = $(top_builddir)/src/libdmf/libdmf.a $(AM_LDFLAGS)
dmfutil_LDADD += $(GLIB_LIBS)
dmfutil_LDADD += $(SQLITE3_LIBS)
