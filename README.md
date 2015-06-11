# ansible-timemachine

A ansible playbook to setup a TimeMachine on Debian (Jessie).

Since there is currently not a package for netatalk available for Jessie this playbook provides an easy way to build and install it.

**Install using:**
ansible-playbook -i hosts playbook.yml -c local
