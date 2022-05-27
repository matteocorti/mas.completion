COMPLETIONS_DIR := $(shell pkg-config --variable=completionsdir bash-completion)

clean:
	rm *~

install:
ifdef COMPLETIONS_DIR
	cp mas.completion $(COMPLETIONS_DIR)/mas
else
	echo "Cannot determine the installation directory for bash completion scripts"
endif

.PHONY: install clean
