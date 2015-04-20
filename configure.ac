#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_INIT([libkqueue], [2.0.3])
LT_INIT
AM_INIT_AUTOMAKE([foreign subdir-objects])
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_SRCDIR([configure.ac])
AC_CONFIG_HEADERS([config.h])
AC_PROG_CC


AC_CHECK_HEADER([sys/event.h])
AC_CHECK_DECL([EPOLLRDHUP], [], [], [[#include <sys/epoll.h>]])
AC_CHECK_DECL([ppoll], [], [], [[
#define _GNU_SOURCE
#include <poll.h>
]])
AC_CHECK_HEADERS([sys/epoll.h sys/inotify.h sys/signalfd.h sys/timerfd.h sys/eventfd.h])
AM_CONDITIONAL(HAVE_SYS_SIGNALFD_H, test "x$HAVE_SYS_SIGNALFD_H" = "xyes")
ACX_PTHREAD()
AC_CHECK_LIB([rt], clock_gettime)

LDFLAGS="$LDFLAGS $PTHREAD_LIBS"
CXXFLAGS="$CXXFLAGS $PTHREAD_CFLAGS"

AC_CONFIG_FILES([Makefile libkqueue.pc])
AC_OUTPUT
