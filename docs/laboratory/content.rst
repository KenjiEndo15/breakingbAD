#######
Content
#######
The laboratory is composed of different components such as
data related to the domain, boxes...

Variable file
#############
A variable file is used in Ansible. 
It currently contains the data for a single domain called
breakingbad (`/ansible/vars/breakingbad.json`_).

Domain
======
.. list-table::
    :header-rows: 1

    * - Name
    * - breakingbad.local

Machines
========
.. list-table::
    :header-rows: 1

    * - Name
      - IP
      - Description
      - OS
    * - dc01
      - 192.168.56.10
      - Domain Controller (ADDS, ADCS...)
      - Win Server 2019 (2019.05.22)
    * - srv01
      - 192.168.56.20
      - Server
      - Win Server 2019 (2019.05.22)
    * - srv02
      - 192.168.56.21
      - Server
      - Win Server 2019 (2019.05.22)

Users, machines, groups and organization units
==============================================
.. list-table::
    :header-rows: 1

    * - Name
      - Group
      - OU
    * - dc01
      - \-
      - Domain Controller
    * - srv01
      - \-
      - Cartel
    * - srv02
      - \-
      - Cartel
    * - Administrator
      - Domain administrators
      - \-
    * - walter.white
      - MethCookers
      - Cartel
    * - jessie.pinkman
      - MethCookers
      - Cartel
    * - saul.goodman
      - Lawyers
      - Cartel
    * - gustavo.fring
      - Distributors
      - Cartel
    * - hector.pinkman
      - Distributors
      - Cartel

Boxes
-----
Vagrant is used in the project to retreive an image for the OS.
Once the image is retrieved, linked clones are created based on a master.

.. tip::

    The deletion of the master is to be done manually (on VirtualBox).

.. caution::

    The deletion of the master also deletes the clones.

.. Hyperlinks
.. _`/ansible/vars/breakingbad.json`: https://github.com/KenjiEndo15/breakingbAD/blob/main/ansible/vars/breakingbad.json