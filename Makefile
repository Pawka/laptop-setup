ANSIBLE_VERSION := $(shell ansible --version 2>/dev/null)

# List of tags to be skipped separated by comma symbol. E.g.: php,bbd,etc.
SKIP_TAGS := php

.PHONY: all
all:
	@echo "Available commands:"
	@echo "  make home"
	@echo "  make work"
	@echo

.PHONY: home
home: setup
	ansible-playbook -i '127.0.0.1' -K home.yml --skip-tags '$(SKIP_TAGS)'

.PHONY: work
work: setup
	ansible-playbook -i '127.0.0.1' -K work.yml --skip-tags '$(SKIP_TAGS)'

.PHONY: setup
setup:
ifndef ANSIBLE_VERSION
	@echo "Ansible not found. Installing."
	sudo apt-get install git ansible
endif
	@echo "========================================"
	@echo "Setup is done."
	@echo "Skipping tags: $(SKIP_TAGS)"
	@echo "========================================"
