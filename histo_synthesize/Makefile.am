##
## Makefile.am 
##

AM_CFLAGS=-I$(top_srcdir)/include
AM_CXXFLAGS=-I$(top_srcdir)/include

bin_PROGRAMS = histo_synthesize
histo_synthesize_SOURCES=histo_synthesize.c
histo_synthesize_LDADD= $(addprefix $(top_builddir)/, $(LIBS_MGH))
histo_synthesize_LDFLAGS=$(OS_LDFLAGS)

# Our release target. Include files to be excluded here. They will be
# found and removed after 'make install' is run during the 'make
# release' target.
EXCLUDE_FILES=
include $(top_srcdir)/Makefile.extra
