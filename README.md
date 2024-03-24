# laptop-setup

Ansible playbooks to setup Debian based laptop for my own needs.


## Install

1. Execute `bin/bootstrap` script to install dependencies.

2. Run `make home` or `make work`

If only specific tag should be executed run:

```
ansible-playbook -K home.yml --tags tag1
```
