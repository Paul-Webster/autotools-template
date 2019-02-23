################################################################################
# Makefile.am generated for use with automake 1.16.1.
################################################################################

SUFFIXES = .s .asm .inc .c .cpp .h .o

AM_CFLAGS =-I$(top_srcdir)/src/libdmf -Wall -O3
if DEBUG
	AM_CFLAGS += -g
endif

################################################################################
# Special rule to suuport FASM usage.
################################################################################
.asm.o:
	fasm $< $@

################################################################################
# The libraries to build.
################################################################################
noinst_LIBRARIES = libdmf.a

################################################################################
# The files to add to the library and to the source distribution.
################################################################################
libdmf_a_SOURCES = \
	$(libdmf_a_HEADERS) \
	asmutils.s \
	fasmutils.asm \
	math.c \
	initialize.c
