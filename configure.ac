################################################################################
# Configure.ac
################################################################################
AC_PREREQ([2.69])
AC_INIT([dmf], [1.0], [campaw@gmail.com])
AC_CONFIG_SRCDIR([src/dmfutil/dmfutil.c])
AC_CONFIG_HEADERS([config.h])
AM_INIT_AUTOMAKE
PKG_PROG_PKG_CONFIG
AC_CONFIG_MACRO_DIR([m4])

################################################################################
# Remember externally set CFLAGS
################################################################################
EXTERNAL_CFLAGS="$CFLAGS"

################################################################################
# Checks for programs. These may set default variables, such as CFLAGS
################################################################################
AM_PROG_AS
AC_PROG_CC_C99
AC_PROG_CPP
AC_PROG_RANLIB
# AC_CHECK_TOOLS(WINDRES, [windres], :)
AC_PROG_INSTALL

################################################################################
# Reset the externally set CFLAGS after calling AC_PROG*
################################################################################
CFLAGS="$EXTERNAL_CFLAGS"

################################################################################
# Use the C language and compiler for the following checks
################################################################################
AC_LANG([C])

################################################################################
# Checks for libraries.
################################################################################
# PKG_CHECK_MODULES([GLIB], [glib-2.0], [have_libglib=yes], [have_libglib=no])
# AM_CONDITIONAL([GLIB],  [test "$have_libglib" = "yes"])

# PKG_CHECK_MODULES([SQLITE3], [sqlite3], [have_libsqlite3=yes], [have_libsqlite3=no])
# AM_CONDITIONAL([LIB_SQLITE3],  [test "$have_libsqlite3" = "yes"])

################################################################################
# Checks for header files.
################################################################################
AC_HEADER_STDC
AC_CHECK_HEADERS([stdio.h])
AC_HEADER_TIME
AC_TYPE_UINTPTR_T
AC_CHECK_HEADERS([direct.h errno.h file.h signal.h sys/time.h time.h unistd.h unixio.h])

################################################################################
# Checks for typedefs, structures, and compiler characteristics.
################################################################################
AC_TYPE_SIZE_T
AC_C_BIGENDIAN
AC_C_CONST
AC_C_INLINE
AC_C_VOLATILE
AC_PROG_GCC_TRADITIONAL
AC_STRUCT_TM
AC_TYPE_SIGNAL

################################################################################
# Add debug support
################################################################################
AC_ARG_ENABLE(debug,
  AS_HELP_STRING(
    [--enable-debug],
    [enable debugging, default: no]),
    [case "${enableval}" in
      yes) debug=true ;;
      no)  debug=false ;;
      *)   AC_MSG_ERROR([bad value ${enableval} for --enable-debug]) ;;
    esac],
    [debug=false])
AM_CONDITIONAL(DEBUG, test x"$debug" = x"true")
AM_COND_IF(DEBUG,
    AC_DEFINE(DEBUG, 1, [Define to 0 if this is a release build]),
    AC_DEFINE(DEBUG, 0, [Define to 1 or higher if this is a debug build]))

################################################################################
# Checks for library functions.
################################################################################
AC_CONFIG_FILES([Makefile
                 src/libdmf/Makefile
                 src/dmfutil/Makefile])
AC_OUTPUT
