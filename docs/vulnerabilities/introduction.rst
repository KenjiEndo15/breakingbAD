Introduction
===============
The laboratory contains configurations vulnerabilities as well
as the ones related to patching.

**Configuration vulnerabilities**

A configuration vulnerability, as it says, relates to
a dangerous configuration introducing a vulnerability.
I use the word "configuration" as a broad term as
opposite to a patch-related vulnerability.

**Example**: enabling NTLMv1 authentication for a client makes it highly
vulnerable (see :doc:`/vulnerabilities/id02`).

**Patch-related vulnerabilities**

The machines' version can be carefuly chosen so that some
vulnerabilities are already present.

**Example**: ZeroLogon on a domain controller makes the whole
domain vulnerable to a complete take-over.
This vulnerability has been patched a while ago and it not
related to any misconfiguration.

Identifiers
-----------
In order to avoid lengthy or inaccurate file titles, identifiers
are used for configuration vulnerabilities.
Here's a list:

* **ID = 01** | ESC8
* **ID = 02** | NTLMv1
* **ID = 03** | WebClient
* **ID = 04** | GPO
* **ID = 05** | IPv6
* **ID = 06** | LLMNR, NBT-NS & mDNS

Actions on vulnerabilities
--------------------------
A vulnerability can have **at least 2** actions: enable, disable and trigger.
To perform any of these actions, we run a playbook that takes a variable
as input (called ``extra-vars``).
The format is as below.

.. code-block::

    ansible-playbook -i inventory.yml playbooks/vulnerabilities/<id?>.yml --extra-vars "action=<enable|disable|trigger>"

Some configurations can make a system vulnerable, even though some of them are **by default**.
Therefore, running ``enable`` won't have any effect if it's run before ``disable``.

Also, some vulnerabilities don't need to be triggered.

Enable
~~~~~~
To introduce a configuration vulnerability, a set of commands are launched on the target machine.

Disable
~~~~~~~
To remove a configuration vulnerability, a set of commands are also launched on the target machine.

Trigger
~~~~~~~
To observe any reaction from a vulnerability, we can trigger it.

Targets
-------
A default set of machines and users are targeted for the configuration vulnerabilities.
You can choose these targets independently with ``extra-vars``
(more on each vulnerabilities' own section).

.. caution::

  Some objects such as users will be created only after a vulnerability was enabled.
  
Table of availables actions, states, and targets
------------------------------------------------
.. list-table::
    :header-rows: 1

    * - Vulnerability ID
      - Trigger available
      - Default state
      - Default target
    * - 01 | ESC8
      - No
      - Absent
      - dc01
    * - 02 | NTLMv1
      - No
      - Absent
      - srv01
    * - 03 | WebClient
      - No
      - Absent
      - srv02
    * - 04 | GPO
      - No
      - Absent
      - srv01 & gustavo.fring
    * - 05 | IPv6
      - Yes
      - Present
      - srv02
    * - 06 | LLMNR, NBT-NS & mDNS
      - Yes
      - Present
      - srv02 & walter.white