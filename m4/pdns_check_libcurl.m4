AC_DEFUN([PDNS_CHECK_LIBCURL], [
  AS_IF([test -n "$HAVE_LIBCURL"], [ : ], [
    LIBCURL_CHECK_CONFIG("yes", "7.21.3", [ HAVE_LIBCURL=y ], [ HAVE_LIBCURL=n ])
  ])
  AM_CONDITIONAL([HAVE_LIBCURL], [test "$HAVE_LIBCURL" = "y"])
])
