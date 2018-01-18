ansible-sphinx
====================================

[![Build Status](https://travis-ci.org/FGtatsuro/ansible-sphinx.svg?branch=master)](https://travis-ci.org/FGtatsuro/ansible-sphinx)

Ansible role for Sphinx.

Requirements
------------

The dependencies on other softwares/librarys for this role.

- Debian
- Alpine Linux
- OSX
  - Homebrew (>= 0.9.5)

Role Variables
--------------

The variables we can use in this role.

|name|description|type|default|
|---|---|---|---|
|sphinx_version|Version of Sphinx you want to install|str|It isn't defined in default. In this case, latest stable version is installed.|

Role Dependencies
-----------------

The dependencies on other roles for this role.

- FGtatsuro.python-requirements

Example Playbook
----------------

    - hosts: all
      roles:
         - { role: FGtatsuro.sphinx }

Test on local Docker host
-------------------------

This project run tests on Travis CI, but we can also run them on local Docker host.
Please check `install`, `before_script`, and `script` sections of `.travis.yml`.
We can use same steps of them for local Docker host.

Local requirements are as follows.

- Ansible (>= 2.0.0)
- Docker (>= 1.10.1)

Notes
-----

- On this role, following Sphinx-related libraries are also installed.
  - [sphinx-intl](https://pypi.python.org/pypi/sphinx-intl) (For i18n)
  - [recommonmark](https://pypi.python.org/pypi/recommonmark) (For Markdown support)
  - [nbsphinx](https://pypi.python.org/pypi/nbsphinx) (For Jupyter Notebook support)

License
-------

MIT
