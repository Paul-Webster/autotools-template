################################################################################
# Makefile.am generated for use with automake 1.16.1.
#
# Copyright (C) 2018-2019, Webster Technology Consulting.
################################################################################

SUFFIXES = .c .cpp .s .o .h .asm

if DEBUG
  AM_CFLAGS =-I$(top_srcdir)/src/libdmf -ansi -pedantic -Wall -g -O3
else
  AM_CFLAGS =-I$(top_srcdir)/src/libdmf -ansi -pedantic -Wall
endif

################################################################################
# The libraries to build
################################################################################
noinst_LIBRARIES = libdmf.a

################################################################################
# The files to add to the library and to the source distribution
################################################################################
libdmf_a_SOURCES = \
	$(libdmf_a_HEADERS) \
	asmmath.s \
	initialize.c \
	math.c
