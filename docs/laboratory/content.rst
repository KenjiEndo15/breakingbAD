Content
========
The laboratory is composed of different components such as data related to the domain, boxes...

Variable file
-------------
A variable file is used in Ansible. 
It currently contains the data for a single domain called breakingbad (`/ansible/vars/breakingbad.json`_).

Domain
~~~~~~
.. list-table::
    :header-rows: 1

    * - Name
    * - breakingbad.local

Machines
~~~~~~~~
.. list-table::
    :header-rows: 1

    * - Name
      - IP
      - Description
      - OS
      - Base memory
      - CPU 
    * - dc01
      - 192.168.56.10
      - Domain Controller (ADDS, ADCS...)
      - Win Server 2019 (2019.05.22)
      - 3000 MB
      - 2
    * - srv01
      - 192.168.56.20
      -
      - Win Server 2019 (2019.05.22)
      - 3000 MB
      - 2
    * - srv02
      - 192.168.56.21
      -
      - Win Server 2019 (2019.05.22)
      - 3000 MB
      - 2

.. tip::

    The local administrator's password is ``Passw0rd!``.

Users, groups and organization units
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.. list-table::
    :header-rows: 1

    * - Name
      - Group
      - OU
      - Password
      - Type
    * - Administrator
      - Domain administrators
      -
      - Passw0rd!
      - Domain administrator
    * - walter.white
      - MethCookers
      - Cartel
      - Passw0rd!
      - Domain user
    * - jessie.pinkman
      - MethCookers
      - Cartel
      - Passw0rd!
      - Domain user

Boxes
-----
Vagrant is used in the project to retreive an image for the OS.
Once the image is retreived, linked clones are created based on a master.

.. list-table::
    :header-rows: 1

    * - Name
      - Type
    * - WindowsServer2019
      - Master
    * - dc01
      - Clone
    * - srv01
      - Clone
    * - srv02
      - Clone

.. tip::

    The deletion of the master is to be done manually (on VirtualBox).

.. caution::

    The deletion of the master also deletes the clones.

.. Hyperlinks
.. _`/ansible/vars/breakingbad.json`: https://github.com/KenjiEndo15/breakingbAD/blob/main/ansible/vars/breakingbad.json