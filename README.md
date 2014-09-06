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

Testing
-------

This role uses [`test-kitchen`][3] for integration testing!

To start out, you'll need to install `test-kitchen`.  The way I recommend to do this is to install [ChefDK][4]
which bundles `test-kitchen` along with an embedded version of ruby in a known working set of gems.  You may
also decide to install ruby and `test-kitchen` on your own in which case you should use bundler.

Install via Bundler
-------------------

Make sure you have a working Ruby and put

    gem 'test-kitchen'
    gem 'kitchen-vagrant'
    gem 'kitchen-ansible', :git => 'git://github.com/trinitronx/kitchen-ansible.git'

in your Gemfile.

Install via ChefDK
------------------

 1. Download [ChefDK][4]
 2. Install `kitchen-ansible` gem from [my fork][5]<br/><br/>`eval $(/opt/chefdk/bin/chef shell-init $(basename $SHELL)); sudo /opt/chefdk/embedded/bin/gem install specific_install; sudo /opt/chefdk/embedded/bin/gem specific_install -l https://github.com/trinitronx/kitchen-ansible -b develop`
 3. Checkout this role: `git clone https://github.com/trinitronx/ansible-role-wemux.git && cd ansible-role-wemux`
 4. Run Test Kitchen: `/opt/chefdk/bin/kitchen test`

Still Need Help?
----------------

Try checking out my other [ansible-tdd example repo][6]

Author Information
------------------

(c) 2014 James Cuzella

[1]: https://github.com/zolrath/wemux
[2]: https://github.com/geerlingguy/ansible-role-git
[3]: https://github.com/test-kitchen/test-kitchen
[4]: https://downloads.getchef.com/chef-dk
[5]: https://github.com/trinitronx/kitchen-ansible
[6]: https://github.com/trinitronx/ansible-tdd
