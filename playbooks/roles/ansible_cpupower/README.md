# Ansible Role: ORDAA/ansible_cpupower

## Description

Using ansible, deploy, configure or uninstall the cpupower program which manages Linux CPU power-saving settings.

## Requirements

- Ansible (Tested on version 2.13 but should work on earlier versions too, including 2.7)

## Role Variables

All variables which can be overridden (in host_vars, group_vars or the command-line) are stored and documented in [defaults/main.yml](defaults/main.yml) file.

## Role tags

All role tags are specified in the role's [tasks/main.yml](tasks/main.yml) file.

- The **cpupower** tag just runs the entire role.
- The **cpupower_install** tag either installs or uninstalls cpupower from the target system(s), depending of the value of the **cpupower_installed** role variable.
- The **cpupower_configure** tag just configures cpupower on a target system where it is already installed.
- The generic **install** and **configure** tags allow this role to be part of a group of other roles that also support these tags so they can be installed or configured in a single step. **configure** can be used this way with --check-mode to check if there are any configuration differences with what's deployed.

## Example

### Playbook

```yaml
---
- hosts:
    - bare_metal_linux_servers
  roles:
    - ansible_cpupower
  vars:
    cpupower_governor: ondemand
    cpupower_frequency_max: 2GHz
    cpupower_ignore_nice_load: true
```

## ansible-lint

ansible-lint only complains about not using FQCN (fqcn-builtins: Use FQCN for builtin actions).
This is a deliberate choice for ansible compatibility reasons and will likely be fixed in the future.

## License
[GPL version 3](https://www.gnu.org/licenses/)
You can find a full copy of the license in the file [COPYING](COPYING).

## Copyright
Thomas Venieris 2022, all rights reserved.
