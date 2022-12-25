.. breakingbAD documentation master file, created by
   sphinx-quickstart on Sun Dec 25 14:02:27 2022.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

.. image:: /assests/banner.png

.. raw:: html

   <hr>

About breakingbAD
=================
breakingbAD is a plateform for cybersecurity enthusiasts to conduct vulnerability research in an easy and fast way.
The current laboratory is Active Directory oriented.

Motivation
----------
As a pentester, a handy environment for testing purposes is key.
I decided to dive into the creation of a laboratory in a similar way as `GOAD (Game of Active Directory)`_ was made.
Since I wanted to customize as much as possible what I wanted to test, I decided to create breakingbAD for that matter.

Do note that only **Windows machines** with **Active Directory** are used within the laboratory.

Main credits
------------
This project wouldn't exist without `GOAD (Game of Active Directory)`_. My laboratory is heavily inspired by it (credits to `Mayfly`_) and I strongly recommend giving it a try.

How does it work?
-----------------
Briefly, virtual machines are created with minimal configurations.
The main goal after that is to configure them to have the necessary dependencies for the vulnerabilities to be added smoothly.
This is what I call a "**base build**".

Once the base build is setup, machines are ready to receive vulnerabilities, **either one by one or all at once**.
Adding vulnerabilities is not necessary, you may just want to have the necessary Active Directory dependencies (ADDS, ADCS...) to test your own stuff. 
This idea of building a base independently was motivated by the need to have a plateform that is ready without having to wait for long.

.. image:: /assests/base_build-vulnerabilities.png

For each vulnerability, you'll have **at least 2 possibilities**.

* **Enable**: enable the vulnerability (installing or creating what it needs to work).
* **Disable**: disable the vulnerability (uninstalling or removing what it needs to not work anymore).
* **Trigger**: trigger a reaction for the vulnerability to manifest itself (for example a network request using a protocol like LLMNR).

What are the tools used?
------------------------
The laboratory make use of the following tools:

* `Python`_
* `Vagrant`_
* `Ansible`_
* `VirtualBox`_

.. Hyperlinks
.. _`GOAD (Game of Active Directory)`: https://github.com/Orange-Cyberdefense/GOAD
.. _`Mayfly`: https://github.com/Mayfly277
.. _`Python`: https://www.python.org/
.. _`Vagrant`: https://www.vagrantup.com/
.. _`Ansible`: https://www.ansible.com/
.. _`VirtualBox`: https://www.virtualbox.org/

.. Tables of content
.. toctree::
   :maxdepth: 2
   :hidden:
   :caption: GETTING STARTED

   getting-started/installation
   getting-started/launch

.. toctree::
   :maxdepth: 2
   :hidden:
   :caption: VULNERABILITIES

   vulnerabilities/introduction
   vulnerabilities/id01
   vulnerabilities/id02
   vulnerabilities/id03
   vulnerabilities/id04
   vulnerabilities/id05
   vulnerabilities/id06

.. toctree::
   :maxdepth: 2
   :hidden:
   :caption: LABORATORY

   laboratory/content