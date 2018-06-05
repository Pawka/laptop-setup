.PHONY: all
all:
	ansible-playbook -i '127.0.0.1' -K playbook.yml
