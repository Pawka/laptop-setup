.PHONY: all
all:
	@echo "ALL"
	ansible-playbook -i '127.0.0.1' -K playbook.yml

.PHONY: install
install:
	sudo apt-get install git ansible
