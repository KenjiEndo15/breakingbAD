Launch
======
We will now start the laboratory (without the vulnerabilities).

Vagrant
-------
This part is related to raw machines - they do not contain any configurations.

Running the machines
~~~~~~~~~~~~~~~~~~~~
.. code-block::

    # Current directory: vagrant
    vagrant up

Halting the machines
~~~~~~~~~~~~~~~~~~~~
.. code-block::

    # Current directory: vagrant
    vagrant halt

Ansible
-------
Next, we want to provision the raw machines to setup a base build.

Base build
~~~~~~~~~~~
All of the vulnerabilities will be built on top of this core architecture.

.. tip::

    If you are using a virtual environment with Python, make sure to activate it beforehand.

.. code-block::
    
    # Current directory: ansible
    ansible-playbook -i inventory.yml playbooks/base_build/base_build.yml

DNS lookups
~~~~~~~~~~~
You may need to modify your host configuration for any DNS lookups you are likely to make.

I personally use a docker container (with Kali Linux) that holds the following configuration.

.. code-block::

    # Current file: /etc/Hosts
    192.168.56.10 breakingbad.local

.. code-block::

    # Current file: /etc/resolv.conf
    nameserver 192.168.56.10
    domain breakingbad.local


Vulnerabilities
---------------
The laboratory contains dangerous AD configurations as well as Windows vulnerabilities (related to patching).
To better name a vulnerability related to dangerous AD configurations, **identifiers** are used.

**Dangerous configurations**

* ✅ **ID = 01** | ESC8 (see ID01)
* ✅ **ID = 02** | NTLMv1 (see ID02)
* ✅ **ID = 03** | WebClient (see ID03)
* ✅ **ID = 04** | GPO abuse (see ID04)
* ✅ **ID = 05** | IPv6 poisoning (see ID05)
* ✅ **ID = 06** | LLMNR, NBT-NS & mDNS poisoning (see ID06)

**Patch-related vulnerabilities**

* ✅ sAMAccountName spoofing
* ✅ ZeroLogon
* ✅ Certifried

See Patch-related vulnerabilities.

Installation
~~~~~~~~~~~~
To install all the vulnerabilities at once and without any customization, run the following command.

.. code-block::

    # Current directory: ansible
    ansible-playbook -i inventory.yml playbooks/vulnerabilities/vulnerabilities.yml --extra-vars "action=enable"

For **ID05** (IPv6 poisoning) and **ID06** (LLMNR, NBT-NS & mDNS poisoning), you can trigger at lookup using the following commands.

**ID05 - IPv6 poisoning**

.. code-block::

    # Current directory: ansible
    ansible-playbook -i inventory.yml playbooks/vulnerabilities/05.yml --extra-vars "action=trigger"

**ID06 - LLMNR, NBT-NS & mDNS poisoning**

.. code-block::

    # Current directory: ansible
    ansible-playbook -i inventory.yml playbooks/vulnerabilities/06.yml --extra-vars "action=trigger"