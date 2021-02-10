SUBDIR=	lib bin usr.bin share

all:
clean:
insteall:

regression-tests:
	@echo "Running regression tests..." \
	&& export PATH=$$PWD/dest/bin:$$PWD/dest/sbin:$$PATH \
	&& cd regress \
	&& $(MAKE) -I$(TOPDIR) -I$(TOPDIR)/mk depend \
	&& exec $(MAKE) -I$(TOPDIR) -I$(TOPDIR)/mk SHELL=/bin/oksh regress

.PHONY: all clean install regression-tests

include mk/bsd.subdir.mk
