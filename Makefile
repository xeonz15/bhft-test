$(VERBOSE).SILENT:

# ставим зависимости
build:
	ansible-galaxy install -r ./requirements.yml

rebuild:
	ansible-galaxy install -r ./requirements.yml --force

validate:
	ansible-lint playbooks/*.yml

test:
	ansible-playbook -i inventory/test_env playbooks/test.yml --check --diff

deploy:
	ansible-playbook -i inventory/test_env playbooks/test.yml --diff

#для дебага
show_facts:
	ansible -i inventory/test_env local_ubuntu -m setup