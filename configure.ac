AC_PREREQ([2.68])
AC_INIT([orb], m4_esyscmd([tr -d '\n' < VERSION]), [https://github.com/gap-packages/orb/issues], [orb], [http://gap-packages.github.io/cvec/])
AC_CONFIG_SRCDIR([src/orb.c])
AC_CONFIG_HEADER([src/pkgconfig.h:cnf/pkgconfig.h.in])
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_AUX_DIR([cnf])
AM_INIT_AUTOMAKE([1.11 -Wall foreign subdir-objects])
AM_SILENT_RULES([yes])

dnl Disable maintainer mode by default. This avoids troubles during packaging,
dnl in particular when the GAP team repackages the source archive.
dnl Users can re-enable it by passing "--enable-maintainer-mode" to configure.
AM_MAINTAINER_MODE

AC_PROG_CC
AM_PROG_AR

LT_PREREQ([2.4.2])
LT_INIT([disable-static dlopen win32-dll])

## Find out what the best compiler flags are
AX_CC_MAXOPT

AC_FIND_GAP

AC_CHECK_SIZEOF([void **])

AC_CYGWIN
AM_CONDITIONAL([SYS_IS_CYGWIN], [test "$CYGWIN" = "yes"])
if test "$CYGWIN" = "yes"; then
  AC_DEFINE(SYS_IS_CYGWIN32, 1, are we on CYGWIN?)
else
  AC_DEFINE(SYS_IS_CYGWIN32, 0, are we on CYGWIN?)
fi
     
AC_CONFIG_FILES([Makefile])
AC_OUTPUT
