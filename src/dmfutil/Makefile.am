################################################################################
# Makefile.am generated for use with automake 1.16.1.
################################################################################

SUFFIXES = .s .asm .inc .c .cpp .h .o

AM_CFLAGS =-I$(top_srcdir)/src/libdmf -Wall -O3
if DEBUG
	AM_CFLAGS += -g
endif

# AM_CFLAGS += $(GLIB_CFLAGS)
# AM_CFLAGS += $(SQLITE3_CFLAGS)

bin_PROGRAMS = dmfutil
dmfutil_SOURCES = dmfutil.c

dmfutil_LDADD = \
	$(top_builddir)/src/libdmf/libdmf.a \
	$(AM_LDFLAGS)

# dmfutil_LDADD += $(GLIB_LIBS)
# dmfutil_LDADD += $(SQLITE3_LIBS)
