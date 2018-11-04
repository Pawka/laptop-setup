.PHONY: all
all:
	ansible-playbook -i '127.0.0.1' -K playbook.yml

.PHONY: insall
install:
	sudo apt-get install git ansible
