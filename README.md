# Test task  demonstrate working with ansible.
# Тестовое задание, демонстрирует работу с ansible.

### Install dependencies before use:
### Перед использованием установить зависимости:
```
make build
```
and setup ssh credentials in ./inventory/test_env/group_vars/test_group/common.yml  
и настроить ssh в ./inventory/test_env/group_vars/test_group/common.yml 

### Linter validation
### Сделать проверку линтером
```
make validate
```

### Apply
### Применить
```
make deploy
```
