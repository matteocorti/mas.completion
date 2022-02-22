COMPLETIONS_DIR := $(shell pkg-config --variable=completionsdir bash-completion)

install:
ifdef COMPLETIONS_DIR
	cp mas.completion $(COMPLETIONS_DIR)/mas
else
	echo "Cannot determine the installtion directory for bash completion scripts"
endif
