include ../../../config.mk

.CURDIR = .
.OBJDIR = $(shell pwd)
.DEFAULT_GOAL :=

all: regress

regress:
ifneq (,$(REGESS_TARGETS))
	for t in $(REGRESS_TARGETS); do \
		$(MAKE) $$t; \
	done
endif

.PHONY: all clean
