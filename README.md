Role Name
=========

Installs and configures [wemux][1] on a host.

Requirements
------------

This role depends on the [git][2] role by geerlingguy.

Role Variables
--------------

The default role variables in `defaults/main.yml` are:

    ---
    # defaults file for wemux
    wemux:
      install_prefix: /usr/local
      host_list: localhost


Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

To run this playbook with default settings, create a basic playbook like this:

    ---
    # This playbook deploys the wemux role for testing
    
    - hosts: wemux-servers
      user: root
    
      roles:
        - wemux


To change the default `host_list` setting in the `wemux.conf` file, or to change the `install_prefix` path:

    - hosts: servers
      roles:
         - { role: trinitronx.wemux, wemux: { install_prefix: /opt/, host_list: [ localhost, foo ] } }

License
-------

Apache

Author Information
------------------

(c) 2014 James Cuzella

[1]: https://github.com/zolrath/wemux
[2]: https://github.com/geerlingguy/ansible-role-git
