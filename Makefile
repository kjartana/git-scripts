# Inspired by
# [visionmedia/git-extras](https://github.com/visionmedia/git-extras)
# (MIT License).

PREFIX ?= /usr/local
BINPREFIX ?= "$(PREFIX)/bin"
BINS = $(wildcard bin/git-*)

install:
	@mkdir -p $(DESTDIR)$(BINPREFIX)
	@echo "... installing bins to $(DESTDIR)$(BINPREFIX)"
	@$(foreach BIN, $(BINS), \
		echo "... installing $(notdir $(BIN))"; \
		cp -f $(BIN) $(DESTDIR)$(BINPREFIX); \
	)

uninstall:
	@$(foreach BIN, $(BINS), \
		echo "... uninstalling $(DESTDIR)$(BINPREFIX)/$(notdir $(BIN))"; \
		rm -f $(DESTDIR)$(BINPREFIX)/$(notdir $(BIN)); \
	)


.PHONY: install uninstall