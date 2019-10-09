ANSIBLE_VERSION := $(shell ansible --version 2>/dev/null)

.PHONY: all
all:
ifndef ANSIBLE_VERSION
	@echo "Ansible not found. Installing."
	sudo apt-get install ansible
endif
	ansible-playbook -i '127.0.0.1' -K playbook.yml

.PHONY: install
install:
	sudo apt-get install git ansible
