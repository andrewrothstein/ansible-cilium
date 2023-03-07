andrewrothstein.cilium
=========

![Build Status](https://github.com/andrewrothstein/ansible-cilium/actions/workflows/build.yml/badge.svg)

Installs the [cilium cli](https://github.com/cilium/cilium-cli).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.cilium
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
