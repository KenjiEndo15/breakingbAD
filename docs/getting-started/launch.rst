######
Launch
######

Raw machines
############
This part is related to raw machines (they do not contain any configurations).

Running the machines
====================
.. code-block::

    # The vagrant directory
    cd breakingbAD/vagrant

    # Starting the virtual machines
    vagrant up

.. tip::

    To stop the virtual machines, use ``vagrant halt`` in the same directory.

Base build
##########
Next, we want to provision the raw machines to setup a base build.
All of the configurations will be built on top of this core architecture.

.. tip::

    If you are using a virtual environment with Python, make sure to activate it beforehand.

.. code-block::
    
    # The ansible directory
    cd breakingbAD/ansible

    # Creating a base build
    ansible-playbook -i inventory.yml playbooks/base_build/base_build.yml

DNS lookups
===========
You may need to modify your host configuration for any DNS lookups you are likely to make.

I personally use a docker container (`Exegol`_) that holds the following configuration.

.. code-block::

    # Current file: /etc/hosts
    192.168.56.10 breakingbad.local

.. code-block::

    # Current file: /etc/resolv.conf
    nameserver 192.168.56.10
    domain breakingbad.local


Configurations
##############

Vulnerabilities
===============
The laboratory contains dangerous AD configurations as well as Windows vulnerabilities (related to patching).
To better name a vulnerability related to dangerous AD configurations, **identifiers** are used.

**Dangerous configurations**

* **ID = 01** | ESC8
* **ID = 02** | NTLMv1
* **ID = 03** | WebClient
* **ID = 04** | GPO
* **ID = 05** | IPv6
* **ID = 06** | LLMNR, NBT-NS & mDNS
* **ID = 07** | Password in user's description
* **ID = 08** | Kerberoasting
* **ID = 09** | ASREProasting

**Patch-related vulnerabilities**

* sAMAccountName spoofing
* ZeroLogon
* Certifried

Quick installation
------------------

To install all the vulnerabilities at once and without any customization, run the following command.

.. code-block::

    # Current directory: ansible
    ansible-playbook -i inventory.yml playbooks/vulnerabilities/vulnerabilities.yml --extra-vars "action=enable"

.. tip::

    To disable them all, run the following command.

    .. code-block::
        
        # Current directory: ansible
        ansible-playbook -i inventory.yml playbooks/vulnerabilities/vulnerabilities.yml --extra-vars "action=disable"        

For **ID05** (IPv6) and **ID06** (LLMNR, NBT-NS & mDNS), you can trigger a lookup using the following commands.

**ID05 - IPv6**

.. code-block::

    # Current directory: ansible
    ansible-playbook -i inventory.yml playbooks/vulnerabilities/05.yml --extra-vars "action=trigger"

**ID06 - LLMNR, NBT-NS & mDNS**

.. code-block::

    # Current directory: ansible
    ansible-playbook -i inventory.yml playbooks/vulnerabilities/06.yml --extra-vars "action=trigger"

More on vulnerabilities in the :doc:`/vulnerabilities/introduction` section.

.. Hyperlinks
.. _`Exegol`: https://exegol.readthedocs.io/en/latest/