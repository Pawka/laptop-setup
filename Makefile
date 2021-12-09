ANSIBLE_VERSION := $(shell ansible --version 2>/dev/null)

.PHONY: all
all:
	@echo "Available commands:"
	@echo "  make home"
	@echo "  make work"
	@echo

.PHONY: home
home: setup
	ansible-playbook -i '127.0.0.1' -K home.yml

.PHONY: work
work: setup
	ansible-playbook -i '127.0.0.1' -K work.yml


.PHONY: setup
setup:
ifndef ANSIBLE_VERSION
	@echo "Ansible not found. Installing."
	sudo apt-get install git ansible
endif
	@echo "Setup is done."
